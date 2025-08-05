confirm_key = vk_enter;
skip_key = ord("X");

// Dialogue Variable \\
dialogue_index = -1;
character_portrait_asset = spr_error_texture;

typist = scribble_typist();
typist.in(0.85, 5);
text = "";

// Methods \\
// Sets Conversation based on argument0
function setConversation(_current_convo){
	dialogue_id = ds_map_find_value(global.storyDialogue, _current_convo);
	dialogue_index = -1;

	advanceDialogue();
}
	
// Self Explanatory function name.
function advanceDialogue(){
	dialogue_index++;
	
	if (dialogue_index = ds_list_size(dialogue_id)) {
		instance_destroy();
	} else {
		var _currentposition = ds_list_find_value(dialogue_id,dialogue_index);
		
		character_portrait = ds_map_find_value(_currentposition,"portrait_sprite");
		text = ds_map_find_value(_currentposition,"text");
	}
}