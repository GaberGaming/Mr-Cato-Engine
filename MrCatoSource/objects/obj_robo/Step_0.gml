Collisions()
hsp = (image_xscale * movespeed)
if (place_meeting(x, (y - 1), obj_cato) && obj_cato.vsp > 0.5) {
    obj_cato.vsp = -6
    SoundEffect(sfx_boing)
    instance_destroy()
    with (instance_create_depth(x, y, (depth - 1), obj_particles)) {
        sprite_index = spr_robo
        image_xscale = (-other.image_xscale)
        image_yscale = -1
    }
}
else if place_meeting(x, y, obj_cato)
    KillCato()
if place_meeting((x + image_xscale), y, obj_wall)
    image_xscale *= -1
