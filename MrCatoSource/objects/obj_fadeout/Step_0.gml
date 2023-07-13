if (image_alpha < 1)
    image_alpha += 0.015
if (image_alpha >= 1 && type == 0) {
    type = 1
    room_goto(targetRoom)
}
if (type == 1) {
    if (image_alpha <= 0)
        instance_destroy()
    image_alpha -= 0.02
}
