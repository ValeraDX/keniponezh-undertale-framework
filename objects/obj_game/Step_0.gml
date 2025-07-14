window_set_caption($"fps: {fps}, true fps: {fps_real}")
delta = delta_time / 16700

if(keyboard_check_pressed(ord("R"))) game_restart()
    
#macro DELTA obj_game.delta 