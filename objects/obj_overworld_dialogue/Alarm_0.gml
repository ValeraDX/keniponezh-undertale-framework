if (char_index < string_length(text[page])){
    char_index++
    alarm[0] = floor(char_delay / DELTA)
    audio_play_sound(snd_text,0,false)
}