/// @description Make the player fall
// You can write your code in this editor
if(keyboard_check_pressed(swingPress)) //Create Web
{
	if(!instance_exists(obj_web))
	{
		instance_create_depth(x, y, 0, obj_web);
	}
}

if(!instance_exists(obj_swing)) //Fall and adjust camera
{
	phy_speed_y += 0.2
}

if(keyboard_check_pressed(restart)) //Temporary Restart - Press Backspace
{
	room_goto(rm_game);
}