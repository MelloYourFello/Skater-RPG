var _confirm = keyboard_check_pressed(confirm_key);

text_progress = min(text_progress + text_speed, text_length)

if (text_progress == text_length) {
	if (_confirm) {
		advanceDialogue();
	}
}
else if (_confirm) {
	text_progress = text_length;
}