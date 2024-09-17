#ifndef RUBY_VM_HPP
#define RUBY_VM_HPP

#include "ScriptMgr.h"
#include "Config.h"
#include "Log.h"
#include "../wrap/init_mod_ruby.hpp"
#include <cstring>
#include <ruby.h>
#include <filesystem>

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

    void InitializeRubyVM();
    void CleanupRubyVM();
    void ExecuteRubyScript(const char* filename);
};

// Function to add all scripts
void Init_ruby_vm();

#endif // RUBY_VM_HPP
