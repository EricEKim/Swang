/// @description Insert description here
// You can write your code in this editor
gravity = .05
right_key = keyboard_check_pressed(vk_right)
up_key = keyboard_check_pressed(vk_up)

if right_key{
	hspeed += 2
	show_debug_message("Dash")
}

if up_key{
	vspeed = -2
	show_debug_message("Jump!")
}

if(keyboard_check_pressed(vk_space))
{
		if(!instance_exists(obj_web))
		{
				instance_create_depth(x, y, 0, obj_web);
		}
}
