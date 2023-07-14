Collisions()
Inputs()
scr_catostatestuff()
image_xscale = xscale
if ((!onground) && state != statenum.ladder) {
    if (yscale < 1.25 && vsp <= 0)
        yscale += 0.025
    if (yscale > 0.5 && vsp > 0)
        yscale -= 0.01
}
else
    yscale = 1
if y > room_height * 1.5
    KillCato()