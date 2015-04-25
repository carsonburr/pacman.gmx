{
count = 0;
left = 0;
up = 0;
right = 0;
down = 0;

if (!place_meeting(x+32, y, wall) && argument0 != -1){
    right = 1;
    count++;
}if (!place_meeting(x, y-32, wall) && argument1 != 1){
    up = 1;
    count++;
}if (!place_meeting(x-32, y, wall) && argument0 != 1){
    left = 1;
    count++;
}if (!place_meeting(x, y+32, wall) && argument1 != -1){
    down = 1;
    count++;
}

if(instance_exists(pacman)){
    dx = pacman.x - x;
    dy = pacman.y - y;
    dx += pacman.vx*96;
    dy += pacman.vy*96;
    if (abs(dx) > abs(dy)){
        if(dx < 0 && left == 1){
            vx = -1;
            vy = 0;
        }else if(dx > 0 && right == 1){
            vx = 1;
            vy = 0;
        }else if(dy < 0 && up == 1){
            vx = 0;
            vy = -1;
        }else if(dy > 0 && down == 1){
            vx = 0;
            vy = 1;
        }else if(dy > 0 && up == 1){
            vx = 0;
            vy = -1;
        }else if(dy < 0 && down == 1){
            vx = 0;
            vy = 1;
        }else if(dx > 0 && left == 1){
            vx = -1;
            vy = 0;
        }else if(dx < 0 && right == 1){
            vx = 1;
            vy = 0;
        }
    }else if (abs(dy) > abs(dx)){
        if(dy < 0 && up == 1){
            vx = 0;
            vy = -1;
        }else if(dy > 0 && down == 1){
            vx = 0;
            vy = 1;
        }else if(dx < 0 && left == 1){
            vx = -1;
            vy = 0;
        }else if(dx > 0 && right == 1){
            vx = 1;
            vy = 0;
        }else if(dx > 0 && left == 1){
            vx = -1;
            vy = 0;
        }else if(dx < 0 && right == 1){
            vx = 1;
            vy = 0;
        }else if(dy > 0 && up == 1){
            vx = 0;
            vy = -1;
        }else if(dy < 0 && down == 1){
            vx = 0;
            vy = 1;
        }
    }else if (abs(dx) == abs(dy)){
        if(dx < 0 && left == 1){
            vx = -1;
            vy = 0;
        }else if(dy < 0 && up == 1){
            vx = 0;
            vy = -1;
        }else if(dx > 0 && right == 1){
            vx = 1;
            vy = 0;
        }else if(dy > 0 && down == 1){
            vx = 0;
            vy = 1;
        }else ghostAI_randomIntent(argument0, argument1);
    }
}else {
        ghostAI_randomIntent(argument0, argument1);
}
}
