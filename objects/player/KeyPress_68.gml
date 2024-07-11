/// @description Insert description here
// You can write your code in this editor


sprite_index = dude_moving_side;
if (image_xscale != 1)
{
	x += sprite_width;
	image_xscale = 1;
}
x +=  move_speed;