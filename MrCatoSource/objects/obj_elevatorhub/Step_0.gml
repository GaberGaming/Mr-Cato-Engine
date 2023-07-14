if (place_meeting(x, y, obj_cato)) && obj_cato.onground && obj_cato.up {
    with (obj_cato) {
        cutscene = 1
        sprite_index = spr_cato_idle
        image_speed = 0
        cutscenetype = "Elevator"
        x = (other.x + 50)
        y = (other.y + 165)
    }
    with (instance_create_depth(x, y, -9999999999999, obj_fadeout))
        targetRoom = other.targetRoom
    instance_destroy()
}
