/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_space))
{
	x = obj_player.x
	y = obj_player.y
	som  = 40
	it = 0
	while(it < som)
	{
			draw_self();
			xdiff = x - atx
			ydiff = y - aty
			x -= xdiff / som
			y -= ydiff / som
			it += 1
	}
}
else
{
		instance_destroy();
}