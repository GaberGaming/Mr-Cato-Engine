if global.keygot {
    x = lerp(x, (obj_cato.x + (obj_cato.xscale * 64)), 0.25)
    y = lerp(y, (obj_cato.y - 48), 0.5)
    image_xscale = obj_cato.xscale
    depth = (obj_cato.depth - 7)
    image_alpha = 0.75
}
else
    image_alpha = 0.9
