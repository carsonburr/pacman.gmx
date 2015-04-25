if (!place_meeting(x+argument0*k, y+argument1*k, wall)){
    vx = argument0;
    vy = argument1;
    if(argument0 == 0){
        move_snap(32, 1);
        image_angle = 180+argument1*90;
    }
    if(argument1 == 0){
        move_snap(1, 32);
        image_angle = 90-argument0*90;
    }
}