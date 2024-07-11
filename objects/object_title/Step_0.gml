/// @description Insert description here
// You can write your code in this editor



if (keyboard_check(vk_left) or keyboard_check(ord("A")))
{
	
}

if (keyboard_check(vk_right) or keyboard_check(ord("D")))
{
	
}
if (keyboard_check(vk_up) or keyboard_check(ord("W")))
{
	--sub_image_index;
}

if (keyboard_check(vk_down) or keyboard_check(ord("S")))
{
	++sub_image_index;
}

if (sub_image_index == 0 and keyboard_check(vk_space))
{
	game_set_speed(30, gamespeed_fps)
	room_goto_next();
}


if (sub_image_index > 3)
{
	sub_image_index = 0;
}

if (sub_image_index < 0)
{
	sub_image_index = 3;
}
