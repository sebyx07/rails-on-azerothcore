#ifndef RAILS_FILE_WATCHER_HPP
#define RAILS_FILE_WATCHER_HPP

#include <string>
#include <thread>
#include <atomic>
#include <filesystem>
#include <unordered_map>
#include <mutex>
#include <chrono>

typedef unsigned long VALUE;

namespace fs = std::filesystem;

class RailsFileWatcher {
public:
    RailsFileWatcher(const fs::path& rails_root);
    ~RailsFileWatcher();

    void start();
    void stop();
    bool checkAndReload();

private:
    fs::path rails_root;
    int inotify_fd;
    std::thread watch_thread;
    std::atomic<bool> should_stop;
    std::unordered_map<int, fs::path> watch_descriptors;

    std::mutex reload_mutex;
    bool reload_requested = false;
    std::chrono::steady_clock::time_point last_change_time;
    std::chrono::steady_clock::time_point last_reload_time;

    void watchFiles();
    void addWatchRecursively(const fs::path& path);
    void scheduleReload();
    void reloadRails();
    static VALUE rubyReloadFunction(VALUE);
};

#endif // RAILS_FILE_WATCHER_HPP