var roomgoto = get_string("Go To Room:", "")
if room_exists(asset_get_index(roomgoto))
    room_goto(asset_get_index(roomgoto))
