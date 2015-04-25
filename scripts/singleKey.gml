{
count = 0;
if (keyboard_check(vk_left)&&!place_meeting(x-scale, y, wall)) count++;
if (keyboard_check(vk_up)&&!place_meeting(x, y-scale, wall)) count++;
if (keyboard_check(vk_right)&&!place_meeting(x+scale, y, wall)) count++;
if (keyboard_check(vk_down)&&!place_meeting(x, y+scale, wall)) count++;
if (count == 1) return 1;
else return 0;
}
