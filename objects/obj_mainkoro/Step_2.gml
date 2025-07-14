var cam_true_x, cam_true_y

cam_x = x
cam_y = y - sprite_height / 2

cam_true_x = clamp(cam_x - (CAM_WIDTH / 2),0,room_width - CAM_WIDTH)
cam_true_y = clamp(cam_y - (CAM_HEIGHT/ 2),0,room_height - CAM_HEIGHT)

camera_set_view_pos(view_camera[view_current],cam_true_x,cam_true_y)