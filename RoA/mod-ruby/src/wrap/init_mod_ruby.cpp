#include "init_mod_ruby.hpp"

extern "C"
void Init_mod_ruby(){
    rb_define_module("AzerothCore");
    Init_ac_world_session();
    Init_ac_player();
    Init_ac_quest();

    Init_ac_player_script();

}
