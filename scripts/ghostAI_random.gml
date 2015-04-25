{
count = 0;
left = 0;
up = 0;
right = 0;
down = 0;

if (!place_meeting(x+32, y, wall)){
    right = 1;
    count++;
}if (!place_meeting(x, y-32, wall)){
    up = 1;
    count++;
}if (!place_meeting(x-32, y, wall)){
    left = 1;
    count++;
}if (!place_meeting(x, y+32, wall)){
    down = 1;
    count++;
}

decision = irandom(count-1);

if (decision == 0){
    if(right == 1){
        vx = 1;
        vy = 0;
    } else if(up == 1){
        vx = 0;
        vy = -1;
    } else if(left == 1){
        vx = -1;
        vy = 0;
    } else if(down == 1){
        vx = 0;
        vy = 1;
    }
} else if (decision == 1){
    if(up == 1){
        vx = 0;
        vy = -1;
    } else if(left == 1){
        vx = -1;
        vy = 0;
    } else if(down == 1){
        vx = 0;
        vy = 1;
    }
} else if (decision == 2){
    if(left == 1){
        vx = -1;
        vy = 0;
    } else if(down == 1){
        vx = 0;
        vy = 1;
    }
} else if (decision == 3){
    if(down == 1){
        vx = 0;
        vy = 1;
    }
}
}