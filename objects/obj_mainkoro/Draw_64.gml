var dtext, dresult
dtext = ["x","y","hsp", "vsp", "getspd", "walkspd", "runtimer", "animation", "frame", "animdir", "delta", "rm speed"]
dresult = [string(x),string(y),string(hsp), string(vsp), string(getspd), string(walkspd), string(runtimer), string(animation), string(frame), string(animdir), string(DELTA), string(room_speed)]

for(var i=0;i<array_length(dresult);i++) draw_text(16,16+16*i,$"{dtext[i]} : {dresult[i]}")