	switch (state) {
    case CAMERA_STATE.FOLLOW_PLAYER:
        if (instance_exists(obj_player_rpg)) {
            x = obj_player_rpg.x;
            y = obj_player_rpg.y;
        } else {
            x = room_width / 2;
            y = room_height / 2;
        }
    break;

    case CAMERA_STATE.FOCUS_OBJECT:
        x = focus.x;
        y = focus.y;
    break;
}
