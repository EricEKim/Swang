/// @description Insert description here
// You can write your code in this editor

right_key = keyboard_check_pressed(vk_right)
up_key = keyboard_check_pressed(vk_up)

if right_key{
	if can_dash{
		hspeed += 2
		show_debug_message("Dash")
		alarm[0] = dash_cool_time
		can_dash = false
	}
}

if up_key{
	if can_jump{
		vspeed = -2
		show_debug_message("Jump!")
		alarm[1] = jump_cool_time
		can_jump = false
	}
}

if(keyboard_check_pressed(vk_space))
{
		if(!instance_exists(obj_web))
		{
				instance_create_depth(x, y, 0, obj_web);
		}
}
