if (global.keygot == 0) {
    global.keygot = 1
    SoundEffect(sfx_gotkey)
	SoundEffect(sfx_keygo)
	SoundEffect(choose(sfx_keygo2,sfx_keygo3,sfx_keygo4,sfx_keygo5,sfx_keygo6,sfx_keygo7))
	global.score += 5
}
