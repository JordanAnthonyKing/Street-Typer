/// @description Insert description here
// You can write your code in this editor

if (keyboard_lastkey == vk_backspace && string_length(command) > 0) {
	command = string_delete(command, string_length(command), 1);
} else if (keyboard_lastkey != vk_backspace) {
	command += string(keyboard_lastchar);
	if (command == "hadouken") {
		// TODO: Handle buffered commands
		state = states.hadouken;
		stateFrameCounter = 0;
		command = "";
	}
}

