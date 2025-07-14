var middle_y = obj_mainkoro.y - (sprite_get_bbox_bottom(obj_mainkoro.sprite_index) - sprite_get_bbox_top(obj_mainkoro.sprite_index)) / 2.75

if (y < middle_y) depth = obj_mainkoro.depth + 10
else depth = obj_mainkoro.depth - 10