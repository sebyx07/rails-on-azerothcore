#ifndef RAILS_FILE_WATCHER_HPP
#define RAILS_FILE_WATCHER_HPP

#include <string>
#include <thread>
#include <atomic>
#include <filesystem>

typedef unsigned long VALUE;

namespace fs = std::filesystem;

class RailsFileWatcher {
public:
    RailsFileWatcher(const fs::path& rails_root);
    ~RailsFileWatcher();

    void start();
    void stop();

private:
    fs::path rails_root;
    int inotify_fd;
    std::thread watch_thread;
    std::atomic<bool> should_stop;

    void watchFiles();
    void reloadRails();
    static VALUE rubyReloadFunction(VALUE);
};

#endif // RAILS_FILE_WATCHER_HPP