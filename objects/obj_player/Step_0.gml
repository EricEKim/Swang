/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space))
{
		if(!instance_exists(obj_web))
		{
				instance_create_depth(x, y, 0, obj_web);
		}
}