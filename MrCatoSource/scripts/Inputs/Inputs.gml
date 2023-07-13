function Inputs() {
    right = keyboard_check(global.key_right)
    left = (-keyboard_check(global.key_left))
    jump = keyboard_check_pressed(global.key_jump)
	attack = keyboard_check_pressed(global.key_attack)
    up = keyboard_check_pressed(global.key_up)
    up2 = keyboard_check(global.key_up)
    down = keyboard_check(global.key_down)
    move = (left + right)
}

