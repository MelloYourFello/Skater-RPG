var _confirm = keyboard_check_pressed(confirm_key);
var _skip = keyboard_check(skip_key);

if (_skip) {
	typist.__skip = true
}

if (typist.get_state() == 1) {
	if (_confirm) {
		advanceDialogue();
	}
}