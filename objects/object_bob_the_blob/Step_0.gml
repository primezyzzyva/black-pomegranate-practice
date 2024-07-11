/// @description Insert description here
// You can write your code in this editor

var steps = 20;

if (keyboard_check(vk_left) or keyboard_check(ord("A")))
{
	x -= steps;
	if (image_xscale != -1)
	{
		x += sprite_width;
		image_xscale = -1;
	}
	
	
}

if (keyboard_check(vk_right) or keyboard_check(ord("D")))
{
	x += steps;
	if (image_xscale != 1)
	{
		x += sprite_width;
		image_xscale = 1;
	}
	
	
}
if (keyboard_check(vk_up) or keyboard_check(ord("W")))
{
	y -= steps;
	image_yscale = 1;
}

if (keyboard_check(vk_down) or keyboard_check(ord("S")))
{
	y += steps;
	image_yscale = -1;
}

if (x > room_width)
{
	x = 0;
}
if (x < 0)
{
	x = room_width;
}

if (y > room_height)
{
	y = 0;
}
if (y < 0)
{
	y = room_height;
}