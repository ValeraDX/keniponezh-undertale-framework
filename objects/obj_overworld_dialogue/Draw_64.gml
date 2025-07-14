var width, height, box_x, box_y, text_x, text_y
width = 578 / sprite_get_width(spr_dialogue_box)
height = 152 / sprite_get_height(spr_dialogue_box)
box_x = 34
box_y = 18
text_x = box_x + 24
text_y = box_y + 24


draw_sprite_ext(
spr_dialogue_box,
0, 
box_x, 
box_y, 
width, 
height,
0,
c_white,
1
)

draw_set_font(font_textbox_def)
draw_text_transformed(text_x, text_y, "*",2,2,0)
var get_text = string_copy(text[page],1,char_index)
draw_text_transformed(text_x + 32 , text_y, get_text,2,2,0)

draw_text(128,32,string(char_delay))