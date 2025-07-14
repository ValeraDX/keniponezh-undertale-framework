depth = 0

button = keyboard_check_pressed(ord("Z"))
cooldown = max(cooldown - 1,0)
if (instance_exists(obj_overworld_dialogue)) cooldown = 30