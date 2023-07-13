function KillCato() {
    with (obj_cato) {
        /*with (instance_create_depth(x, y, (depth - 1), obj_particles)) {
            sprite_index = spr_cato_ded
            image_xscale = (-other.image_xscale)
            image_yscale = -1
        }*/
        with (instance_create_depth(x, y, (depth - 1), obj_particles)) {
            sprite_index = spr_gibs
			image_index = 0
        }
        with (instance_create_depth(x, y, (depth - 1), obj_particles)) {
            sprite_index = spr_gibs
			image_index = 1
        }
        with (instance_create_depth(x, y, (depth - 1), obj_particles)) {
            sprite_index = spr_gibs
			image_index = 2
        }
        with (instance_create_depth(x, y, (depth - 1), obj_particles)) {
            sprite_index = spr_gibs
			image_index = 3
        }
        with (instance_create_depth(x, y, (depth - 1), obj_particles)) {
            sprite_index = spr_gibs
			image_index = 4
        }
        with (instance_create_depth(x, y, (depth - 1), obj_particles)) {
            sprite_index = spr_gibs
			image_index = 5
        }
        dead = 1
        x = -100
        y = -100
        alarm[1] = 90
        SoundEffect(sfx_gibs)
    }
}

