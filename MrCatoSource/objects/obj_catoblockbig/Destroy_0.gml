SoundEffect(sfx_hitblock)
SoundEffect(sfx_gibs)
repeat (2) {
	with (instance_create_depth((x + 32), (y + 32), (depth - 1), obj_particles))
	    image_index = 0
	with (instance_create_depth((x + 32), (y + 32), (depth - 1), obj_particles))
	    image_index = 1
	with (instance_create_depth((x + 32), (y + 32), (depth - 1), obj_particles))
	    image_index = 2
	with (instance_create_depth((x + 32), (y + 32), (depth - 1), obj_particles))
	    image_index = 3
	with (instance_create_depth((x + 32), (y + 32), (depth - 1), obj_particles))
	    image_index = 4
	with (instance_create_depth((x + 32), (y + 32), (depth - 1), obj_particles))
	    image_index = 4
	with (instance_create_depth((x + 32), (y + 32), (depth - 1), obj_particles))
	    image_index = 4
	with (instance_create_depth((x + 32), (y + 32), (depth - 1), obj_particles))
	    image_index = 4
	global.score += 5
}
instance_create_depth((x + 32), (y + 32), (depth + 1), obj_bang)