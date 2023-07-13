if place_meeting(x, (y - 1), obj_cato) {
    obj_cato.vsp = -4
    SoundEffect(sfx_boing)
    instance_destroy()
}
