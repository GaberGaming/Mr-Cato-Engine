if (!audio_is_playing(song)) {
    audio_stop_all()
    audio_play_sound(song, 0.5, false, 0.75)
}
