#include "rails_file_watcher.hpp"
#include <sys/inotify.h>
#include <unistd.h>
#include <stdexcept>
#include "Config.h"

#undef HAVE_STRUCT_TIMESPEC
#undef HAVE_STRUCT_TIMEVAL

#include <ruby.h>

#undef uint128_t

#include <fmt/format.h>
#include "Log.h"
#include <unordered_map>
#include <chrono>
#include <mutex>

RailsFileWatcher::RailsFileWatcher(const fs::path& rails_root)
    : rails_root(rails_root), should_stop(false), last_reload_time(std::chrono::steady_clock::now()) {
    inotify_fd = inotify_init1(IN_NONBLOCK);
    if (inotify_fd == -1) {
        throw std::runtime_error("Failed to initialize inotify");
    }
}

RailsFileWatcher::~RailsFileWatcher() {
    stop();
    close(inotify_fd);
}

void RailsFileWatcher::start() {
    watch_thread = std::thread(&RailsFileWatcher::watchFiles, this);
}

void RailsFileWatcher::stop() {
    should_stop = true;
    if (watch_thread.joinable()) {
        watch_thread.join();
    }
}

void RailsFileWatcher::addWatchRecursively(const fs::path& path) {
    for (const auto& entry : fs::recursive_directory_iterator(path)) {
        if (fs::is_directory(entry)) {
            int wd = inotify_add_watch(inotify_fd, entry.path().c_str(), IN_MODIFY | IN_CREATE | IN_DELETE | IN_MOVED_FROM | IN_MOVED_TO);
            if (wd == -1) {
                LOG_ERROR("server.loading", "RailsFileWatcher: Failed to add watch for {}", entry.path().string());
            } else {
                watch_descriptors[wd] = entry.path();
            }
        }
    }
}

void RailsFileWatcher::watchFiles() {
    fs::path app_path = rails_root / "app";
    addWatchRecursively(app_path);

    const int buffer_size = 4096;
    char buffer[buffer_size];

    while (!should_stop) {
        int length = read(inotify_fd, buffer, buffer_size);
        if (length == -1) {
            if (errno == EAGAIN || errno == EWOULDBLOCK) {
                std::this_thread::sleep_for(std::chrono::milliseconds(100));
                continue;
            } else {
                LOG_ERROR("server.loading", "RailsFileWatcher: Error reading inotify events");
                break;
            }
        }

        int i = 0;
        while (i < length) {
            struct inotify_event* event = reinterpret_cast<struct inotify_event*>(&buffer[i]);
            if (event->len) {
                std::string filename(event->name);
                fs::path filepath = watch_descriptors[event->wd] / filename;

                if (filepath.extension() == ".rb") {
                    LOG_INFO("server.loading", "RailsFileWatcher: Detected change in Ruby file: {}", filepath.string());
                    scheduleReload();
                }

                if (event->mask & IN_CREATE && fs::is_directory(filepath)) {
                    addWatchRecursively(filepath);
                }
            }
            i += sizeof(struct inotify_event) + event->len;
        }
    }

    for (const auto& wd : watch_descriptors) {
        inotify_rm_watch(inotify_fd, wd.first);
    }
    LOG_INFO("server.loading", "RailsFileWatcher: Stopped watching all directories");
}

void RailsFileWatcher::scheduleReload() {
    std::lock_guard<std::mutex> lock(reload_mutex);
    reload_requested = true;
    last_change_time = std::chrono::steady_clock::now();
}

bool RailsFileWatcher::checkAndReload() {
    std::unique_lock<std::mutex> lock(reload_mutex);
    auto now = std::chrono::steady_clock::now();
    auto time_since_change = std::chrono::duration_cast<std::chrono::seconds>(now - last_change_time).count();
    auto time_since_reload = std::chrono::duration_cast<std::chrono::seconds>(now - last_reload_time).count();

    LOG_DEBUG("server.loading", "RailsFileWatcher: Checking reload conditions. Reload requested: {}, Time since change: {}s, Time since last reload: {}s",
              reload_requested ? "true" : "false", time_since_change, time_since_reload);

    if (reload_requested &&
        time_since_change >= 2 &&
        time_since_reload >= 2) {
        reload_requested = false;
        last_reload_time = now;
        lock.unlock();  // Unlock before calling reloadRails()
        reloadRails();
        return true;
    }
    return false;
}


void RailsFileWatcher::reloadRails() {
    LOG_INFO("server.loading", "RailsFileWatcher: Attempting to reload Rails");
    int state;
    rb_protect(RailsFileWatcher::rubyReloadFunction, Qnil, &state);

    if (state) {
        VALUE exception = rb_errinfo();
        if (!NIL_P(exception)) {
            VALUE message = rb_funcall(exception, rb_intern("message"), 0);
            VALUE backtrace = rb_funcall(exception, rb_intern("backtrace"), 0);
            LOG_ERROR("server.loading", "RailsFileWatcher: Error reloading Rails: {}", StringValueCStr(message));

            if (!NIL_P(backtrace)) {
                long backtrace_length = RARRAY_LEN(backtrace);
                for (long i = 0; i < backtrace_length && i < 10; ++i) {  // Limit to first 10 lines
                    VALUE backtrace_line = rb_ary_entry(backtrace, i);
                    LOG_ERROR("server.loading", "Backtrace: {}", StringValueCStr(backtrace_line));
                }
            }
        } else {
            LOG_ERROR("server.loading", "RailsFileWatcher: Unknown error reloading Rails");
        }
        rb_set_errinfo(Qnil);
    } else {
        LOG_INFO("server.loading", "RailsFileWatcher: Successfully reloaded Rails");
    }

    // Add a test Ruby execution to verify VM state
    int test_state;
    rb_protect([](VALUE) -> VALUE {
        rb_eval_string("puts 'Ruby VM is responsive after reload attempt'");
        return Qnil;
    }, Qnil, &test_state);

    if (test_state) {
        LOG_ERROR("server.loading", "RailsFileWatcher: Ruby VM seems to be in an inconsistent state after reload");
    } else {
        LOG_INFO("server.loading", "RailsFileWatcher: Ruby VM is responsive after reload attempt");
    }
}

VALUE RailsFileWatcher::rubyReloadFunction(VALUE) {
    rb_eval_string("AzerothCore::ReloadCode.reload!");
    return Qnil;
}