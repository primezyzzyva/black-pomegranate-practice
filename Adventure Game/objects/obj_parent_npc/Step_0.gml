/// @description Animation and more (NPCs)

// Random loop timing
// randomize NPCs
if (image_speed > 0) { // am I still animating
	if (image_index == image_number) { // am on the last image in the animation
		image_speed = 0;
		alarm[0] = irandom_range(loopRange01, loopRange02);
	}
}

// Depth sorting so NPCs correctly position in the game world
depth = -y;