draw_set_alpha(1)
if (cutscene && cutscenetype == "RiseUp")
    draw_sprite_ext(spr_elevator_open, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (cutscene && cutscenetype == "Elevator")
    draw_sprite_ext(spr_elevator_player, image_index, x, y, 1, image_yscale, image_angle, image_blend, image_alpha)
if (!((cutscene && cutscenetype == "Elevator")))
    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_font(-1)
if (global.doorsneedtoclose != 0) {
    if (global.doorsneedtoclose != 1)
        draw_text(x, (y - 96), (((string("You need to close: ") + string(global.doorsneedtoclose)) + string(" ")) + string("doors!")))
    else
        draw_text(x, (y - 96), (((string("You need to close: ") + string(global.doorsneedtoclose)) + string(" ")) + string("door!")))
}
