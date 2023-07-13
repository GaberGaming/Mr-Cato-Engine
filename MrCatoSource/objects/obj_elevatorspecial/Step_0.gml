if (place_meeting(x, y, obj_cato) && obj_cato.onground && obj_cato.up && global.keygot == 1 && global.doorsneedtoclose == 0)
{
    instance_destroy()
    instance_create_depth(x, (y - 16), depth, obj_explosion)
}
