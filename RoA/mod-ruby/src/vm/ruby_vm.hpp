#ifndef RUBY_VM_HPP
#define RUBY_VM_HPP

#include "ScriptMgr.h"
#include "rails_file_watcher.hpp"
#include <filesystem>
#include <memory>

namespace fs = std::filesystem;

class RubyVM : public WorldScript
{
public:
    RubyVM();
    void OnStartup() override;
    void OnShutdown() override;

private:
    bool enabled;
    static bool ruby_initialized;
    fs::path rails_path;
    std::unique_ptr<RailsFileWatcher> watcher;

    void InitializeRubyVM();
    void CleanupRubyVM();
    void ExecuteRubyScript(const char* filename);
};

// Function to add all scripts
void Init_ruby_vm();

#endif // RUBY_VM_HPP