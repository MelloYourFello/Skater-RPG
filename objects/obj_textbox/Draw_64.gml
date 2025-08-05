// Text
scribble_font_set_default("fnt_text");
scribble(text).draw(x,y,typist)

// Character Portrait
var _local_portrait = asset_get_index(character_portrait);
if(_local_portrait != -1)
{
	character_portrait_asset = _local_portrait;
}

if character_portrait_asset != -1 {
	draw_sprite_ext(character_portrait_asset,0,camera_get_view_width(0)/2 - 900, camera_get_view_height(0)/2,0.3,0.3,0,image_blend,image_alpha);
}