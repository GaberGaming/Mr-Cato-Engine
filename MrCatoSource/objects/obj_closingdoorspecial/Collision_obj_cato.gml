if (obj_cato.up && image_index == 0) {
    image_index = 1
    with (obj_cato) {
        cutscene = 1
        sprite_index = spr_cato_idle
        image_speed = 0
        cutscenetype = "SpecialDoor"
        x = (obj_closingdoorspecial.x + 50)
        y = (obj_closingdoorspecial.y + 51)
    }
    with (instance_create_depth(x, y, -9999999999999, obj_fadeout))
        targetRoom = other.targetRoom
}
