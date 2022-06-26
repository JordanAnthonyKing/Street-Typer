/// @description Core Player Logic
// You can write your code in this editor

// Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var _move = key_right - key_left; // Note this system is flawed as both = 0 instead of overwriting with most recent

hsp = _move * walksp;
vsp = vsp + grv;

// Jumping
if (place_meeting(x , y + 1, oInvisibleWall)) && (key_jump) {
	vsp = -jumpsp;
}

// Horizontal collision
if (place_meeting(x + hsp, y, oInvisibleWall)) {
	// Sign return 1 if positive, -1 if negative
	while (!place_meeting(x + sign(hsp), y, oInvisibleWall)) {
		x = x + sign(hsp);
	}
	hsp = 0; // SF doesn't need HSP however this is a nice catch to not need an else statement
} 

x = x + hsp;

// Vertical collision
if (place_meeting(x, y + vsp, oInvisibleWall)) {
	// Sign return 1 if positive, -1 if negative
	while (!place_meeting(x, y + sign(vsp), oInvisibleWall)) {
		y = y + sign(vsp);
	}
	vsp = 0; // SF doesn't need HSP however this is a nice catch to not need an else statement
} 

y = y + vsp;

// Animation
if (!place_meeting(x, y + 1, oInvisibleWall)) {
	sprite_index = sPlayerA;
	image_speed = 0;
	if (vsp > 0) image_index = 1;	
	else image_index = 0;
} else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sPlayer;	
	} else {
		sprite_index = sPlayerR;	
	}
}

if (hsp != 0) image_xscale = sign(hsp);