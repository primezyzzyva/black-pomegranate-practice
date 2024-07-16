/// @description Player Movement variables

// Variables
walkSpeed = 16;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
nearbyNPC = noone;
lookRange = 30;
hasGreeted = false;

// Create listener and set orientation
// This code is found in the manual for GS2
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,00,0,1);