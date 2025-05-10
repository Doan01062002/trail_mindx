if (mouse_check_button_pressed(mb_left)) {
    if (dialog_index < 2) {
        dialog_index += 1;
    }
}


if (dialog_index == 2) {
    if (keyboard_check_pressed(ord("1")) || keyboard_check_pressed(vk_numpad1)) selected = 2550;
    if (keyboard_check_pressed(ord("2")) || keyboard_check_pressed(vk_numpad2)) selected = 2510;
    if (keyboard_check_pressed(ord("3")) || keyboard_check_pressed(vk_numpad3)) selected = 2600;
    if (keyboard_check_pressed(ord("4")) || keyboard_check_pressed(vk_numpad4)) selected = 1050;

    if (selected != -1) {
        dialog_index = 0;
        if (selected == 2550) {
            room_goto(Room_win);
        } else {
            room_goto(Room_lose);
        }
    }
}
