if(place_meeting(x,y,obj_mainkoro) && !instance_exists(obj_overworld_dialogue) && button && cooldown = 0){
    talked_to_much++
    with instance_create_depth(x,y,0,obj_overworld_dialogue){
        text_sound = snd_text
        if(!obj_textbox_another_test.talked_to_other_guy){
            if (obj_textbox_another_test.talked_to_much = 1){
                text[0] = "The guy next to me is nuts."
                text[1] = "Do you agree with me?"
                text[2] = "...Oh, wait...\nThere are no dialogue options..."
            }
            else{
                text[0] = "Fucking nuts, dude."
                text[1] = "Absolutely.\nFucking.\nNuts."
            }
        }
        else if (obj_textbox_another_test.talked_to_other_guy){
            text[0] = "Do you see it now?"
            text[1] = "Totally.\nAbsolutely.\nVery."
            text[2] = "Definetily.\nTruly.\nFucking."
            text[3] = "NUTS!!!"
        }
    }
}

