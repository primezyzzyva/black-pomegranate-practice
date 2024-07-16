/// @description Player movement

// Check keys for movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// If idle
if (vx == 0 && vy == 0) {
	// Change idle sprite based on last direction
	switch dir {
		case 0: sprite_index = spr_player_idle_right; break;	
		case 1: sprite_index = spr_player_idle_up; break;	
		case 2: sprite_index = spr_player_idle_left; break;	
		case 3: sprite_index = spr_player_idle_down; break;	
	}
}

// If moving
if (vx != 0 || vy != 0) {
	if !collision_point(x+vx, y, obj_parent_env, true, true) {
		x += vx; // move horizontally
	}
	if !collision_point(x, y+vy, obj_parent_env, true, true) {
		y += vy; // move vertically
	}
	
	// Change walking Sprite based on direction
	if (vx > 0) {
		sprite_index = spr_player_walk_right
		dir = 0;
	}
	if (vx < 0) {
		sprite_index = spr_player_walk_left
		dir = 2;
	}
	if (vy > 0) {
		sprite_index = spr_player_walk_down
		dir = 3
	}
	if (vy < 0) {
		sprite_index = spr_player_walk_up
		dir = 1
	}
	
	// Move audio listener with me
	audio_listener_set_position(0,x,y,0);
}

// Check for collision with NPCs
nearbyNPC = collision_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, obj_parent_npc, false, true);
if nearbyNPC {
	if (hasGreeted == false) {
		// Play greeting sound
		audio_play_sound(snd_greeting01, 1, 0); // no looping
		hasGreeted = true;
	}
	show_debug_message("obj_player has found an NPC!");
}
if !nearbyNPC {
	// Reset greeting
	if (hasGreeted == true) {
		hasGreeted = false;
	}
	show_debug_message("obj_player has NOT found an NPC!");
}

// Depth sorting
depth = -y;