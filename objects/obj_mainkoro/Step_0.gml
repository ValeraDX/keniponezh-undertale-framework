var left, right, up, down, run
left = keyboard_check(vk_left)
right = keyboard_check(vk_right)
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)
run = keyboard_check(vk_lshift)

walkspd = 3

if(run){
    runtimer++
    
    getspd = walkspd + 1
    
    if (runtimer > 10 * DELTA) getspd = walkspd + 2
        
    if (runtimer > 60 * DELTA) getspd = walkspd + 3
}
else{
    getspd = walkspd
    runtimer = 0
}

var hinput, vinput
if(!disable_input){
    hinput = right - left
    vinput = down - up
}
else{
    hinput = 0
    vinput = 0
}

if (hinput != 0 || vinput != 0){
    if (movement_accuracy = accuracy.Modern){
        var dir, gethsp, getvsp
        dir = point_direction(0, 0, hinput, vinput)
        gethsp = lengthdir_x(getspd, dir)
        getvsp = lengthdir_y(getspd, dir)
    
        hsp = gethsp 
        vsp = getvsp
    }
    else if (movement_accuracy = accuracy.Undertale){
        hsp = getspd * hinput
        vsp = getspd * vinput
    }
} 
else{
    hsp = 0
    vsp = 0
}

repeat (abs(hsp) * DELTA){
    x += sign(hsp)
    if (place_meeting(x+sign(hsp),y,obj_solid)){
        x-=sign(hsp)
        hsp = 0
        break
    }
}

repeat(abs(vsp) * DELTA){
    y += sign(vsp)
    if (place_meeting(x,y+sign(vsp),obj_solid)){
        y-=sign(vsp)
        vsp = 0
        break
    }
}


// animations!
if(!disable_input){
	if (up & !array_contains(animarr, 3)) {array_push(animarr, 3)}
	if (left & !array_contains(animarr, 2)) {array_push(animarr, 2)}
	if (down & !array_contains(animarr, 1)){array_push(animarr, 1)}
	if (right & !array_contains(animarr, 0)) {array_push(animarr, 0)}
	
	if (!up & array_contains(animarr, 3)){array_delete(animarr, array_get_index(animarr, 3), 1)}
	if (!left & array_contains(animarr, 2)){array_delete(animarr, array_get_index(animarr, 2), 1)}
	if (!down & array_contains(animarr, 1)){array_delete(animarr, array_get_index(animarr, 1), 1)}
	if (!right & array_contains(animarr, 0)){array_delete(animarr, array_get_index(animarr, 0), 1)}
	if (array_length(animarr)>0){animdir = animarr[0]}
}
    
switch (animdir){
    case 0:
        animation = spr_frisk_right
    break
    case 1:
        animation = spr_frisk_down
    break
    case 2:
        animation = spr_frisk_left
    break
    case 3:
        animation = spr_frisk_up
    break
}
