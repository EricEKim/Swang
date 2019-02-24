xCheck = room_width / window_get_width()
yCheck = room_height / window_get_height()
if(mouse_check_button_released(mb_left)){
	if(place_meeting(mouse_x * xCheck, mouse_y * yCheck, self)){
		game_end();
	}
}
show_debug_message(xCheck * mouse_x)