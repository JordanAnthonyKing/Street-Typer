/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.Font);
draw_text(x - (string_length(command) * 12 / 2), y - 120, command);

if (debug) {
	var abs_box = absolute_hitbox(active_head_box);
	draw_rectangle_color(abs_box.left, abs_box.top, abs_box.right, abs_box.bottom, c_blue, c_blue, c_blue, c_blue, true);
	abs_box = absolute_hitbox(active_body_box);
	draw_rectangle_color(abs_box.left, abs_box.top, abs_box.right, abs_box.bottom, c_blue, c_blue, c_blue, c_blue, true);
	abs_box = absolute_hitbox(active_leg_box);	
	draw_rectangle_color(abs_box.left, abs_box.top, abs_box.right, abs_box.bottom, c_blue, c_blue, c_blue, c_blue, true);		
}