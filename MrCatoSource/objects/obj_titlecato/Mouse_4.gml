if hit = false {
	sprite_index = spr_titlecatopanik
	image_speed = 0.35
	alarm[0] = 15
	hit = true
}
SoundEffect(sfx_hit)
instance_create_depth(mouse_x, mouse_y, (depth - 1), obj_bang)
