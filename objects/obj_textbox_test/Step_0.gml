if(place_meeting(x,y,obj_mainkoro) && !instance_exists(obj_overworld_dialogue) && button && cooldown = 0){
    with instance_create_depth(x,y,0,obj_overworld_dialogue){
        obj_textbox_another_test.talked_to_other_guy=true
        text_sound = snd_z
        text[0] = "spongebob."
        text[1] = "patrick."
        text[2] = "...sandy?"
        text[3] = "...squidward!"
    }
}

