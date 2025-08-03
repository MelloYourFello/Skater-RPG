var _confirm = keyboard_check_pressed(confirm_key);

if (typist.get_state() == 1) {
	if (_confirm) {
		advanceDialogue();
	}
}