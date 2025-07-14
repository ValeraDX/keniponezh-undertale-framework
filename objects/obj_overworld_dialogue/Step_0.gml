var next, skip
next = keyboard_check_pressed(ord("Z"))
skip = keyboard_check_pressed(ord("X"))


if (skip){
    if (char_index < string_length(text[page])){
        char_index = string_length(text[page])
        alarm[0] = -1
    } 
}

if (next){
    if(char_index = string_length(text[page])){
        if (page < array_length(text) - 1){
            page++
            char_index = 0
            alarm[0] = floor(char_delay / DELTA)
        }
        else{ 
            obj_mainkoro.disable_input = false 
            instance_destroy();
        }
    }
}
