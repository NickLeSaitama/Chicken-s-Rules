right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
jump = keyboard_check_pressed(ord("W"));
spaceBar = keyboard_check_pressed(vk_space);
down = keyboard_check(ord("S"));
keyAction = keyboard_check_pressed(ord("E"));
keyActionPrimary = keyboard_check_pressed(ord("J"));

//Execute current state
invincible  = max(invincible-1,0);
flash = max(flash-0.05,0);

script_execute(state);
