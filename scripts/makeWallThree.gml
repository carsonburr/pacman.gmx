sprite_index = wall3;
image_index = 0;
image_speed = 0;

if(argument0 == 0){
    image_angle = 0;
    if(place_meeting(x+32, y+32, wall) && place_meeting(x-32, y+32, wall)) image_index = 1;
    else if(place_meeting(x+32, y+32, wall)) image_index = 2;
    else if(place_meeting(x-32, y+32, wall)) image_index = 3;
}else if(argument1 == 0){
    image_angle = 270;
    if(place_meeting(x-32, y+32, wall) && place_meeting(x-32, y-32, wall)) image_index = 1;
    else if(place_meeting(x-32, y+32, wall)) image_index = 2;
    else if(place_meeting(x-32, y-32, wall)) image_index = 3;
}else if(argument2 == 0){
    image_angle = 180;
    if(place_meeting(x+32, y-32, wall) && place_meeting(x-32, y-32, wall)) image_index = 1;
    else if(place_meeting(x-32, y-32, wall)) image_index = 2;
    else if(place_meeting(x+32, y-32, wall)) image_index = 3;
}else if(argument3 == 0){
    image_angle = 90;
    if(place_meeting(x+32, y+32, wall) && place_meeting(x+32, y-32, wall)) image_index = 1;
    else if(place_meeting(x+32, y-32, wall)) image_index = 2;
    else if(place_meeting(x+32, y+32, wall)) image_index = 3;
}