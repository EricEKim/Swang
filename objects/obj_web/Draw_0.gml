/// @description Draw Line Until Space Held
// You can write your code in this editor
if(!keyboard_check(vk_space) or length < 18)
{
	x = obj_player.x
	y = obj_player.y
	atx = x + length
	aty = y - length
	som  = 60
	it = 0
	xdiff = x - atx
	ydiff = y - aty
	while(it <= som)
	{
			x -= xdiff / som
			y -= ydiff / som
			it += 1
			draw_self();
	}
	length += extendSpeed
	obj_view.yOffset -= 2
}
else
{
		instance_create_depth(0, 0, 0, obj_fixView);
		instance_create_depth(0, 0, 0, obj_swing);
		obj_swing.atx = obj_player.x + length;
		obj_swing.aty = obj_player.y - length;
		rope = sqrt(2 * sqr(length))
		obj_swing.rope = rope
		instance_destroy();
}