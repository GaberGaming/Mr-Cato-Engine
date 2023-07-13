cutscene = 0
x = targetx
y = targety
if audio_is_playing(sfx_rumble)
    audio_stop_sound(sfx_rumble)
if (cutscenetype == "RiseUp") {
    with (instance_create_depth(x, y, (depth + 1), obj_particles)) {
        sprite_index = spr_elevator_open
        hsp = 0
        vsp = 0
    }
    SoundEffect(choose(sfx_mrcatoah, sfx_mrcatohm, sfx_mrcatohello))
}
