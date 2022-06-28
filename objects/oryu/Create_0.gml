/// @description Insert description here
// You can write your code in this editor

//DEBUG
debug = true;

// Properties

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
stateStepCounter = 0;
stateFrameCounter = 0;

// HURTBOX DATA
absolute_hitbox = function(hitbox)
{
    return {
		left: hitbox.left + x,
		top: hitbox.top + y,
		right: hitbox.right + x,
		bottom: hitbox.bottom + y
	}
}

active_head_box = {};
active_body_box = {};
active_leg_box = {};

standing_head_box = {
	left: -8,
	top: -87,
	right: 16,
	bottom: -71
};

standing_body_box = {
	left: -26,
	top: -73,
	right: 14,
	bottom: -31
};

standing_leg_box = {
	left: -26,
	top: -30,
	right: 14,
	bottom: 2
};

active_head_box = standing_head_box;
active_body_box = standing_body_box;
active_leg_box = standing_leg_box;

walk_forward_head_box = {
	left: -3, 
	top: -87, 
	right: 21, 
	bottom: -71
}

walk_forward_body_box = {
	left: -26,
	top: -73, 
	right: 14, 
	bottom: -31
}

walk_forward_leg_box = {
	left: -26,
	top: -30,
	right: 14,
	bottom: 2
}

walk_back_head_box = {
	left: -19, 
	top: -87, 
	right: 5, 
	bottom: -71
}

walk_back_body_box = {
	left: -26,
	top: -73, 
	right: 14, 
	bottom: -31
}

walk_back_leg_box = {
	left: -26,
	top: -30,
	right: 14,
	bottom: 2
}

// Specials
hadouken = [
	{
		frameCount: 2,
		newHurtBox: true,
		newHitBox: false,
		hurtBox: {
			head: {
				left: 2,
				top: -60,
				right: 26,
				bottom: -42,
			},
			body: {
				left: -16,
				top: -45,
				right: 28,
				bottom: -21,
			},
			legs: {
				left: -16,
				top: -23,
				right: 28,
				bottom: 1,
			}
			
		}
	},
	{
		frameCount: 6,
		newHurtBox: true,
		newHitBox: false,
		hurtBox: {
			head: {
				left: -8,
				top: -87,
				right: 16,
				bottom: -71
			},
			body: {
				left: -26,
				top: -73,
				right: 14,
				bottom: -31
			},
			legs: {
				left: -26,
				top: -30,
				right: 14,
				bottom: 2
			}
			
		}
	},
	{
		frameCount: 2,
		newHurtBox: true,
		newHitBox: false,
		hurtBox: {
			head: {
				left: 10,
				top: -93,
				right: 34,
				bottom: -75
			},
			body: {
				left: -7,
				top: -76,
				right: 33,
				bottom: -32
			},
			legs: {
				left: -7,
				top: -33,
				right: 33,
				bottom: 1
			}
			
		}
	},
	{
		frameCount: 42,
		newHurtBox: true,
		newHitBox: false,
		hurtBox: {
			head: {
				left: 37,
				top: -78,
				right: 63,
				bottom: -60
			},
			body: {
				left: 20,
				top: -64,
				right: 60,
				bottom: -26
			},
			legs: {
				left: -12,
				top: -29,
				right: 56,
				bottom: 1
			}
			
		}
	}
];
