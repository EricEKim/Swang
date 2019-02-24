/// @description Draw Line Until Space Held
// You can write your code in this editor
if(!keyboard_check(swingPress) or length < minimumLine) //Draw Line Until Space Pressed
{
	x = obj_player.x
	y = obj_player.y
	atx = x + length
	aty = y - length
	som  = pixelsInLine
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
	draw_sprite(spr_target, 0, x, y)
	length += extendSpeed
}
else //Create Swing Object
{
	if(place_meeting(x, y, obj_skyscraper))
	{
		instance_create_depth(0, 0, 0, obj_swing);
		obj_swing.atx = obj_player.x + length;
		obj_swing.aty = obj_player.y - length;
		rope = sqrt(2 * sqr(length))
		obj_swing.rope = rope
	}
	instance_destroy();
}