var _textToDraw = dialogue_id[dialogue_index].text
var _characterPortrait = dialogue_id[dialogue_index].portrait_sprite
draw_text(camera_get_view_width(0)/2, camera_get_view_height(0)/2,_textToDraw)
if dialogue_id[dialogue_index].portrait_sprite != noone {
	draw_sprite_ext(_characterPortrait,0,camera_get_view_width(0)/2 - 400, camera_get_view_height(0)/2,0.5,0.5,image_angle, image_blend, image_alpha)
}