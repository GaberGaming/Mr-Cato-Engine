function CollisionsCato() {
	if place_meeting(x+hsp,y,par_wall)
	{
	    yplus = 0;
	    while (place_meeting(x+hsp,y-yplus,par_wall) && yplus <= abs(1*hsp)) yplus += 1;
	    if place_meeting(x+hsp,y-yplus,par_wall)
	    {
	        while (!place_meeting(x+sign(hsp),y,par_wall)) x+=sign(hsp);
	        hsp = 0;
	    }
	    else
			y -= yplus
	}
	x += hsp;
    if place_meeting(x, (y + vsp), par_wall) {
        while (!(place_meeting(x, (y + sign(vsp)), par_wall)))
            y += sign(vsp)
        vsp = 0
    }
    if place_meeting(x, (y + 1), par_wall)
        onground = 1
    else
        onground = 0
    y += vsp
    if (vsp < 20)
        vsp += grav
	if place_meeting(x,y + 6,par_wall) and !place_meeting(x,y + 6,obj_wall) and vsp > 0 {
		while !place_meeting(x,y+1,obj_stairsh)
			y += 1
	}
}

