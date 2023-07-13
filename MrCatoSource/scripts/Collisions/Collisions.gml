function Collisions() {
    if place_meeting((x + hsp), y, obj_wall) {
        while (!(place_meeting((x + sign(hsp)), y, obj_wall)))
            x += sign(hsp)
        hsp = 0
    }
    x += hsp
    if place_meeting(x, (y + vsp), obj_wall) {
        while (!(place_meeting(x, (y + sign(vsp)), obj_wall)))
            y += sign(vsp)
        vsp = 0
    }
    if place_meeting(x, (y + 1), obj_wall)
        onground = 1
    else
        onground = 0
    y += vsp
    if (vsp < 20)
        vsp += grav
}

