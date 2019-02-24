/// @description Make the player fall
// You can write your code in this editor
if(keyboard_check_pressed(swingPress)) //Create Web
{
	if(!instance_exists(obj_web))
	{
		instance_create_depth(x, y, 0, obj_web);
	}
}
else if(keyboard_check(vk_shift))
{
	frameCount += 1
	if(frameCount == 5 and boostBool) //Boost
	{
		phy_speed_x += 10
		boostBool = false
		frameCount = 0
	}
}
else if(frameCount > 0 and jumpBool) //Jump
{
	phy_speed_y = -10
	jumpBool = false
	frameCount = 0
}

if(!instance_exists(obj_swing)) //Fall and adjust camera
{
	phy_speed_y += 0.2
}

if(keyboard_check_pressed(restart)) //Temporary Restart - Press Backspace
{
	room_goto(rm_game);
}