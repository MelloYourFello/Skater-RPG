function startDialogue(_convo){
	if (instance_exists(obj_textbox))
		return
		
	var _inst = instance_create_depth(x, y, -999, obj_textbox);
	_inst.setConversation(_convo)
}

/* function type(_x, _y, _text, _progress, _width) {
	var _draw_y