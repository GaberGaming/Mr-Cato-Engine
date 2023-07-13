instance_destroy()
repeat (8) {
    with (instance_create_depth(x, y, depth, obj_particles))
        sprite_index = spr_gemparticle
}
SoundEffect(sfx_gotkey)
SoundEffect(sfx_hit)
