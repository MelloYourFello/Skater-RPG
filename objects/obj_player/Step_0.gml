// Input
var _right_key = keyboard_check(vk_right);
var _left_key = keyboard_check(vk_left);
var _up_key = keyboard_check(vk_up);
var _down_key = keyboard_check(vk_down);
var _shift_key = keyboard_check(vk_shift);

// Speed
xspd = (_right_key - _left_key) * movespd
yspd = (_down_key - _up_key) * movespd

if _shift_key {
	movespd = runspd;
} else {
	movespd = walkspd;
}

x += xspd
y += yspd