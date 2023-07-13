with (obj_cato) {
    if up {
        if state != statenum.ladder
			state = statenum.ladder
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
        x = (other.x + 18)
    }
}
