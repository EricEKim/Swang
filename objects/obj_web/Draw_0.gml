/// @description Insert description here
// You can write your code in this editor
if(!keyboard_check(vk_space) or length < 18)
{
	x = obj_player.x
	y = obj_player.y
	atx = x + length
	aty = y - length
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
	length += extendSpeed
}
else
{
		instance_create_depth(0, 0, 0, obj_swing);
		obj_swing.atx = obj_player.x + length;
		obj_swing.aty = obj_player.y - length;
		rope = sqrt(2 * sqr(length))
		obj_swing.rope = rope
		instance_destroy();
}