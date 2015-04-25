sprite_index = wall4;
image_speed = 0;

if(place_meeting(x+32, y-32, wall)){
    if(place_meeting(x+32, y+32, wall)){
        if(place_meeting(x-32, y+32, wall)){
            if(place_meeting(x-32, y-32, wall)) image_index = 15;
            else image_index = 14;
        }else if(place_meeting(x-32, y-32, wall)) image_index = 13;
        else image_index = 10;
    }else if(place_meeting(x-32, y+32, wall)){
        if(place_meeting(x-32, y-32, wall)) image_index = 12;
        else image_index = 9;
    }else if(place_meeting(x-32, y-32, wall)) image_index = 8;
    else image_index = 4;
}else if(place_meeting(x+32, y+32, wall)){
    if(place_meeting(x-32, y+32, wall)){
        if(place_meeting(x-32, y-32, wall)) image_index = 11;
        else image_index = 7;
    }else if(place_meeting(x-32, y-32, wall)) image_index = 6;
    else image_index = 3;
}else if(place_meeting(x-32, y+32, wall)){
    if(place_meeting(x-32, y-32, wall)) image_index = 5;
    else image_index = 2;
}else if(place_meeting(x-32, y-32, wall)) image_index = 1;
else image_index = 0;