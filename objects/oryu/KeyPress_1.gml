/// @description Insert description here
// You can write your code in this editor

command += string(keyboard_lastchar);
if (command == "hadouken") {
	// TODO: Handle buffered commands
		state = states.hadouken;
		stateFrameCounter = 0;
		command = "";
}