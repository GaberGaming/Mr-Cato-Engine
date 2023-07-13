function SoundEffect(sound) {
    var randompitch = random_range(0.9, 1.1)
    if audio_is_playing(sound)
        audio_stop_sound(sound)
    audio_sound_pitch(sound, randompitch)
    audio_play_sound(sound, 0.5, false, 1)
}

