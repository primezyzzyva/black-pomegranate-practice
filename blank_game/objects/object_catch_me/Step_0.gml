/// @description Insert description here
// You can write your code in this editor


if (y > room_height)
{
	y = 1;
}
if (y < 0)
{
	y = room_height -1;
}

if (x > room_width)
{
	x = 0;
	forward = choose(0,1);
}
if (x < 0)
{
	x = room_width;
	forward = choose(0,1);
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