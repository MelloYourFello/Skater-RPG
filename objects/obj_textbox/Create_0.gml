confirm_key = vk_enter;

// Dialogue Variable \\
dialogue_index = -1;
dialogue_id = [];

// Text Variables \\
text_font = fnt_text;
text_color = c_white;
text_speed = 0.6;

text_progress = 0;
text_length = 0;

// Methods \\
// Sets Conversation based on argument0
function setConversation(_current_convo){
	dialogue_id = global.testDialogue[$ _current_convo];
	dialogue_index = -1;

	advanceDialogue();
}
	
// Self Explanatory function name.
function advanceDialogue(){
	dialogue_index++;
	if (dialogue_index >= array_length(dialogue_id)) {
		instance_destroy();
	}
}