if (place_meeting(x, (y - 1), obj_cato) && place_meeting(x, y, obj_onewaywall)) {
    with (obj_cato) {
        if down {
            if state != statenum.ladder
				state = statenum.ladder
            y = floor(y)
            if ((y % 2) == 1)
                y += 1
        }
    }
}
