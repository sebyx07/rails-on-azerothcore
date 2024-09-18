#include "rails_file_watcher.hpp"
#include <sys/inotify.h>
#include <unistd.h>
#include <stdexcept>
#include "Config.h"
#include <ruby.h>
#undef uint128_t
#include <fmt/format.h>
#include "Log.h"

RailsFileWatcher::RailsFileWatcher(const fs::path& rails_root)
    : rails_root(rails_root), should_stop(false) {
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

void RailsFileWatcher::watchFiles() {
    fs::path app_path = rails_root / "app";
    int watch_descriptor = inotify_add_watch(inotify_fd, app_path.c_str(), IN_MODIFY | IN_CREATE | IN_DELETE);

    if (watch_descriptor == -1) {
        LOG_ERROR("server.loading", "RailsFileWatcher: Failed to add watch for {}", app_path.string());
        return;
    }

    LOG_INFO("server.loading", "RailsFileWatcher: Started watching directory: {}", app_path.string());

    const int buffer_size = 4096;
    char buffer[buffer_size];

    while (!should_stop) {
        int length = read(inotify_fd, buffer, buffer_size);
        if (length == -1) {
            if (errno == EAGAIN || errno == EWOULDBLOCK) {
                // No events available, sleep for a short time before checking again
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
                if (filename.substr(filename.find_last_of(".") + 1) == "rb") {
                    LOG_INFO("server.loading", "RailsFileWatcher: Detected change in file: {}", filename);
                    reloadRails();
                    break;  // Reload only once per batch of events
                }
            }
            i += sizeof(struct inotify_event) + event->len;
        }
    }

    inotify_rm_watch(inotify_fd, watch_descriptor);
    LOG_INFO("server.loading", "RailsFileWatcher: Stopped watching directory: {}", app_path.string());
}

VALUE RailsFileWatcher::rubyReloadFunction(VALUE) {
    rb_eval_string("Rails.application.reloader.reload!");
    return Qnil;
}

void RailsFileWatcher::reloadRails() {
    LOG_INFO("server.loading", "RailsFileWatcher: Attempting to reload Rails");
    int state;
    rb_protect(RailsFileWatcher::rubyReloadFunction, Qnil, &state);

    if (state) {
        VALUE exception = rb_errinfo();
        if (!NIL_P(exception)) {
            VALUE message = rb_funcall(exception, rb_intern("message"), 0);
            LOG_ERROR("server.loading", "RailsFileWatcher: Error reloading Rails: {}", StringValueCStr(message));
        } else {
            LOG_ERROR("server.loading", "RailsFileWatcher: Unknown error reloading Rails");
        }
        rb_set_errinfo(Qnil);
    } else {
        LOG_INFO("server.loading", "RailsFileWatcher: Successfully reloaded Rails");
    }
}