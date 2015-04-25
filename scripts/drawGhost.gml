subimg += animspeed;
draw_sprite(ghost, subimg, x, y);

if(vx == 1) draw_sprite(eyes, 0, x, y);
else if(vy == -1) draw_sprite(eyes, 1, x, y);
else if(vx == -1) draw_sprite(eyes, 2, x, y);
else if(vy == 1) draw_sprite(eyes, 3, x, y);
else draw_sprite(eyes, 0, x, y)