// Input
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
shift_key = keyboard_check(vk_shift);

// Speed
xspd = (right_key - left_key) * movespd
yspd = (down_key - up_key) * movespd

if shift_key {
	movespd = runspd;
} else {
	movespd = walkspd;
}

x += xspd
y += yspd