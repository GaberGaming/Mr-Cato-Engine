if place_meeting(x, (y - 1), obj_cato) {
    obj_cato.vsp = -11
    SoundEffect(sfx_boing)
    sprite_index = spr_shirtdud_bouncedon
    alarm[0] = 30
}
