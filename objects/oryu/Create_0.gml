/// @description Insert description here
// You can write your code in this editor

enum states
{
    neutral,
	hadouken
}

hsp = 0; // horizontal speed
vsp = 0; // vertical speed
grv = 0.3; // gravity
walksp = 4; // walking speed
jumpsp = 9; // jumping speed
command = "";

state = states.neutral;
stateFrameCounter = 0;
