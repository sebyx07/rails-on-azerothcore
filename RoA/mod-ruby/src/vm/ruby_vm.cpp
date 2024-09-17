#include "ruby_vm.hpp"

RubyVM::RubyVM() : WorldScript("RubyVM")
{
    LOG_INFO("server.loading", "RubyVM: Constructor called.");
    enabled = sConfigMgr->GetOption<bool>("ModRuby.Enable", false);
    LOG_INFO("server.loading", "RubyVM: Module enabled: {}", enabled ? "true" : "false");

    // Set the fixed path for AzerothCore root
    rails_path = fs::path("/rails");
    LOG_INFO("server.loading", "RubyVM: Module path: {}", rails_path.string());
}

void RubyVM::OnStartup()
{
    if (!enabled || ruby_initialized)
    {
        return;
    }

    InitializeRubyVM();

    if (ruby_initialized)
    {
        Init_mod_ruby();
        LOG_INFO("server.loading", "RubyVM: Loading Rails ENV");
        ExecuteRubyScript((rails_path / "config" / "environment_wow.rb").string().c_str());
    }
}

void RubyVM::OnShutdown()
{
    if (!enabled || !ruby_initialized)
    {
        return;
    }

    LOG_INFO("server.loading", "RubyVM: Unloading RailsOnAzerothCoreApplication");
    ExecuteRubyScript("config/shutdown.rb");

    CleanupRubyVM();
}

void RubyVM::InitializeRubyVM()
{
    try {
        // Set LD_PRELOAD
        setenv("LD_PRELOAD", "/azerothcore/build/src/server/shared/libshared.so", 1);
        LOG_INFO("server.loading", "RubyVM: Set LD_PRELOAD to /azerothcore/build/src/server/shared/libshared.so");

        LOG_INFO("server.loading", "RubyVM: Initializing Ruby VM.");
        RUBY_INIT_STACK;
        ruby_init();
        ruby_init_loadpath();
        char* options[] = {(char*)"ruby", (char*)"-e", (char*)"1"};
        ruby_options(3, options);

        VALUE ruby_version = rb_const_get(rb_cObject, rb_intern("RUBY_VERSION"));
        const char* version_str = StringValueCStr(ruby_version);
        LOG_INFO("server.loading", "Ruby VM initialized. Version: {}", version_str);

        // Set up Bundler if Gemfile exists
        fs::path gemfile_path = rails_path / "Gemfile";
        if (fs::exists(gemfile_path))
        {
            LOG_INFO("server.loading", "RubyVM: Gemfile found");
        }

        ruby_initialized = true;
        LOG_INFO("server.loading", "RubyVM: Initialization complete.");
    } catch (const std::exception& e) {
        LOG_ERROR("server.loading", "RubyVM: Exception during initialization: {}", e.what());
        ruby_initialized = false;
    }
}

void RubyVM::CleanupRubyVM()
{
    if (ruby_initialized)
    {
        LOG_INFO("server.loading", "RubyVM: Cleaning up Ruby VM.");
        ruby_cleanup(0);
        ruby_initialized = false;
        LOG_INFO("server.loading", "RubyVM: Ruby VM cleanup complete.");
    }
}

void RubyVM::ExecuteRubyScript(const char* filename)
{
    fs::path script_path = rails_path / "lib" / filename;
    LOG_INFO("scripts.rubyvm", "RubyVM: Attempting to execute {}", script_path.string());

    int state;

    // Create a Ruby string with the file path
    VALUE rb_filename = rb_str_new_cstr(script_path.string().c_str());

    // Use rb_load to load the file
    rb_protect(
        [](VALUE arg) -> VALUE {
            rb_load(arg, 0);
            return Qnil;
        },
        rb_filename,
        &state
    );

    if (state) {
        VALUE exception = rb_errinfo();
        if (!NIL_P(exception)) {
            VALUE message = rb_funcall(exception, rb_intern("message"), 0);
            VALUE backtrace = rb_funcall(exception, rb_intern("backtrace"), 0);

            LOG_ERROR("scripts.rubyvm", "RubyVM: Error executing {}: {}", filename, StringValueCStr(message));

            if (!NIL_P(backtrace)) {
                long backtrace_length = RARRAY_LEN(backtrace);
                for (long i = 0; i < backtrace_length && i < 10; ++i) {  // Limit to first 10 lines
                    VALUE backtrace_line = rb_ary_entry(backtrace, i);
                    LOG_ERROR("scripts.rubyvm", "Backtrace: {}", StringValueCStr(backtrace_line));
                }
            }
        } else {
            LOG_ERROR("scripts.rubyvm", "RubyVM: Unknown error executing {}", filename);
        }
    } else {
        LOG_INFO("scripts.rubyvm", "RubyVM: Successfully executed {}", filename);
    }

    // Cleanup steps
    rb_gc_start();  // Force a full garbage collection cycle

    // Clear any pending exceptions
    rb_set_errinfo(Qnil);

    LOG_INFO("scripts.rubyvm", "RubyVM: Finished executing and cleaning up after {}", filename);
}

bool RubyVM::ruby_initialized = false;

// Add all scripts in one
void Init_ruby_vm()
{
    new RubyVM();
}
