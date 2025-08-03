function loadDialogueJSON(_fileName) {
	var _dialogueMap = ds_map_create();
	
	if file_exists(_fileName) {
		var _file = file_text_open_read(_fileName)
		if _file != -1 {
			var _jsonString = "";
			
			// Read the file
			while !file_text_eof(_file) {
				_jsonString += file_text_read_string(_file);
				file_text_readln(_file);
			}
			
			// Close the File
			file_text_close(_file)
			
			// Grab and parse the data into a map
			var _jsonData = json_decode(_jsonString)
			_dialogueMap = _jsonData;
		}
	}
	else {
		show_debug_message("COULD NOT LOAD DIALOGUE MAP!!");
		return undefined;
	}
	
	return _dialogueMap;
}


function startDialogue(_convo){
	if (instance_exists(obj_textbox))
		return
		
	var _inst = instance_create_depth(x, y, -999, obj_textbox);
	_inst.setConversation(_convo)
}