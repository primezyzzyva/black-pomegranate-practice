/// @description Insert description here
// You can write your code in this editor

if (x > 1259 - sprite_width) // the width of pixels in the background. gotta be a better way
{
	x = 0;
	forward = choose(0,1);
}
if (x < 0)
{
	x = 1259 - sprite_width; // sprite_background.sprite_width;
	forward = choose(0,1);
}

if (y > room_height) //sprite_background.sprite_height)
{
	y = 0;
	
}
if (y < 0)
{
	y = room_height; // sprite_background.sprite_height;
}


if (forward == 1)
{
	x += random_range(0,15);
	y += random_range(0,5);
}
else
{
	x -= random_range(0,15);
	y -= random_range(0,5);
}