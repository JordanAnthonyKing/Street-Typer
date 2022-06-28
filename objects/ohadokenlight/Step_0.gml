/// @description Insert description here
// You can write your code in this editor

if (frameCounter < 6) {
	sprite_index = sHadokenStart;
	image_speed = 0;
	if (frameCounter < 2) {
		image_index = 0;
	} else if (frameCounter < 4) {
		image_index = 1;
	} else if (frameCounter < 6) {
		image_index = 2;
	}
} else {
	sprite_index = sLightHadoken;
	image_speed = 1;
}

x += 3;
frameCounter++;

if (x > room_width + 64) {
	instance_destroy();
}




