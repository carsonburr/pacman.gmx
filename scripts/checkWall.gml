count = 0;
up = 0;
right = 0;
down = 0;
left = 0;

if(place_meeting(x+32, y, wall)){
    count++;
    right = 1;
}

if(place_meeting(x-32, y, wall)){
    count++;
    left = 1;
}

if(place_meeting(x, y+32, wall)){
    count++;
    down = 1;
}

if(place_meeting(x, y-32, wall)){
    count++;
    up = 1;
}

if(count == 0){
    //do nothing
}else if(count == 1){
    makeWallOne(up, right, down, left);
}else if(count == 2){
    makeWallTwo(up, right, down, left);
}else if(count == 3){
    makeWallThree(up, right, down, left);
}else if(count == 4){
    makeWallFour();
}












