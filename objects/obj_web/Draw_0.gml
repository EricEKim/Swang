/// @description Insert description here
// You can write your code in this editor
if(!keyboard_check(vk_space) or length < 10)
{
	while(x < length)
	{
		x += extendSpeed
		y -= extendSpeed
		draw_self()
	}
	length += extendSpeed
	x = obj_player.x
	y = obj_player.y
}
else
{
		instance_create_depth(0, 0,0, obj_swing);
}