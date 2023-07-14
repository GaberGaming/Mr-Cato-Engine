if (place_meeting(x, y, obj_cato) && obj_cato.onground && obj_cato.up && global.keygot == 1 && global.doorsneedtoclose <= 0) {
    with (obj_cato) {
        cutscene = 1
        sprite_index = spr_cato_idle
        image_speed = 0
        cutscenetype = "Elevator"
        x = (obj_elevator.x + 50)
        y = (obj_elevator.y + 165)
    }
    with (instance_create_depth(x, y, -9999999999999, obj_fadeout))
        targetRoom = other.targetRoom
    instance_destroy()
	global.score += 10
	if explosions
		instance_create_depth(x,y,depth,obj_explosions)
}
targetRoom = MainRoom
