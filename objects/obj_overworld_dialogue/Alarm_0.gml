if (char_index < string_length(text[page])){
    var get_string_char, get_char_next, set_delay
    get_string_char = string_char_at(text[page], char_index)
    get_char_next = string_char_at(text[page],char_index+1) 
    set_delay = char_delay

    if (get_pause_char(get_char_next)) set_delay = char_delay * 8
    
    char_index++
    alarm[0] = set_delay
    audio_play_sound(text_sound,0,false)
}