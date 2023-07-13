function scr_cato_normal() {
    hsp = (xscale * movespeed)
    if (move == (-xscale)) {
        xscale = move
        movespeed = 0
    }
    if onground {
        if jump {
            vsp = -8
            SoundEffect(sfx_jumping)
        }
        if (hsp != 0) {
            sprite_index = spr_cato_walk
            image_speed = 0.15
        }
        else {
            sprite_index = spr_cato_idle
            image_speed = 0.35
        }
    }
    else {
        sprite_index = spr_cato_jump
        image_speed = 0
    }
    if (move != 0) {
        if (movespeed < 5)
            movespeed += 0.25
    }
    else {
        if (movespeed > 0)
            movespeed -= 0.1
        if (movespeed < 0)
            movespeed = 0
    }
	if attack
		state = statenum.attack
}

function scr_cato_ladder() {
    xscale = 1
    hsp = 0
    movespeed = 0
    if up2 {
        sprite_index = spr_cato_ladderup
        vsp = -3
    }
    else if down {
        sprite_index = spr_cato_ladderdown
        vsp = 3
    }
    else {
        sprite_index = spr_cato_ladderidle
        vsp = 0
    }
    if ((!(place_meeting(x, y, obj_ladder))) || (onground && (!(place_meeting(x, (y + 1), obj_onewaywall))))) {
        state = statenum.normal
        vsp = 0
    }
    if jump {
		state = statenum.normal
        vsp = -2
        yscale = 1
    }
    image_speed = 0.25
}

function scr_cato_attack() {
    hsp = (xscale * movespeed)
	if sprite_index != spr_cato_attack {
		sprite_index = spr_cato_attack
		image_index = 0
		movespeed = 6
	}
	if floor(image_index) = 2 {
		if !instance_exists(obj_catopunchhitbox)	
			instance_create_depth(x,y,depth - 1,obj_catopunchhitbox)
	}
	yscale = 1
	if floor(image_index) = image_number - 1
		state = statenum.normal
	if movespeed > 0
		movespeed -= 0.25
	if movespeed < 0
		movespeed = 0
	vsp = 0
	image_speed = 0.35

}

function scr_catostatestuff() {
    if (cutscene == 0 && dead == 0) {
        switch state {
			case statenum.normal: scr_cato_normal() break
            case statenum.ladder: scr_cato_ladder() break
			case statenum.attack: scr_cato_attack() break
		}
    }
    else if (dead == 0) {
        switch cutscenetype
        {
            case "RiseUp":
                if (y > targety) {
                    y -= 1.5
                    if (!audio_is_playing(sfx_rumble))
                        SoundEffect(sfx_rumble)
                }
                else if audio_is_playing(sfx_rumble)
                    audio_stop_sound(sfx_rumble)
                if (y < targety)
                    y = targety
                sprite_index = spr_cato_idle
                image_speed = 0.35
                yscale = 1
                vsp = 0
                break
            case "Elevator":
                if (!audio_is_playing(sfx_rumble))
                    SoundEffect(sfx_rumble)
                y -= 1.5
                sprite_index = spr_cato_idle
                image_speed = 0.35
                yscale = 1
                vsp = 0
                break
            case "SpecialDoor":
                sprite_index = spr_cato_idle
                image_speed = 0.35
                yscale = 1
                vsp = 0
                hsp = 0
                break
        }

    }
}

