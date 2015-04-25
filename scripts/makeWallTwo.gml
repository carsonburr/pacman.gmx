sprite_index = wall2;
image_speed = 0;

if(argument0 == 1){
    if(argument1 == 1){
        image_angle = 180;
        if(place_meeting(x+32, y-32, wall)) image_index = 1;
        else image_index = 0;
    }else if(argument2 == 1){
        image_index = 2;
        image_angle = 90;
    }else if(argument3 == 1){
        image_angle = 270;
        if(place_meeting(x-32, y-32, wall)) image_index = 1;
        else image_index = 0;
    }
}else if(argument1 == 1){
    if(argument2 == 1){
        image_angle = 90;
        if(place_meeting(x+32, y+32, wall)) image_index = 1;
        else image_index = 0;
    }else if(argument3 == 1){
        image_index = 2;
        image_angle = 0;
    }
}else if(argument2 == 1){
    if(argument3 == 1){
        image_angle = 0;
        if(place_meeting(x-32, y+32, wall)) image_index = 1;
        else image_index = 0;
    }
}