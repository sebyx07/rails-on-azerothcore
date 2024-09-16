#include "player_scripts_handler.hpp"
#include <iostream>

AcPlayerScriptsHandler::AcPlayerScriptsHandler() : PlayerScript("AcPlayerScriptsHandler") {}

void AcPlayerScriptsHandler::OnLogin(Player* player)
{
    try {
        std::cout << "OnLogin called for player: " << player->GetName() << std::endl;

        AcPlayerWrapper* playerWrapper = new AcPlayerWrapper(player);

        VALUE AzerothCore = rb_const_get(rb_cObject, rb_intern("AzerothCore"));

        VALUE EventRouter = rb_const_get(AzerothCore, rb_intern("EventRouter"));

        VALUE event_name = rb_str_new2("player_login");
        VALUE ruby_player = Data_Wrap_Struct(rb_cAcPlayer, nullptr, [](void* ptr) { delete static_cast<AcPlayerWrapper*>(ptr); }, playerWrapper);

        int argc = 2;
        VALUE argv[2] = { event_name, ruby_player };
        rb_funcall2(EventRouter, rb_intern("trigger_event"), argc, argv);
    }
    catch (const std::exception& e) {
        std::cerr << "Exception in OnLogin: " << e.what() << std::endl;
    }
    catch (...) {
        std::cerr << "Unknown exception in OnLogin" << std::endl;
    }
}

void AcAddPlayerScriptsHandler()
{
    new AcPlayerScriptsHandler();
}
