target = obj_cato
if (instance_exists(obj_cato) && obj_cato.dead == 0) {
    if (global.smoothcam == 0) {
        camerax = targetx
        cameray = targety
    }
    else {
        camerax = lerp(camerax, targetx, 0.25)
        cameray = lerp(cameray, targety, 0.25)
    }
    camera_set_view_pos(view_camera[0], (camerax - 320), (cameray - 240))
    targetx = target.x
    targety = target.y
    targetx = clamp(targetx, 320, (room_width - 320))
    targety = clamp(targety, 240, (room_height - 240))
}
else if (room == Title) {
    camera_set_view_pos(view_camera[0], 0, 0)
    targetx = 0
    targety = 0
    camerax = 0
    cameray = 0
}
