/// @description Insert description here
// You can write your code in this editor
angle = point_direction(obj_player.x, obj_player.y, atx, aty)
xdiff = atx - obj_player.x
ydiff = aty - obj_player.y
len = sqrt(sqr(xdiff) + sqr(ydiff))
if(len > rope and snag == 0) //If Rope Snags
{
	snag = 1
	momentum = sqrt(sqr(obj_player.phy_speed_x) + sqr(obj_player.phy_speed_y))
}
if(snag == 1) //Circular Motion
{
	show_debug_message(momentum)
	if(obj_player.x < atx)
	{
		negCos = cos(angle * (pi / 180))
		negSin = sin(angle * (pi / 180))
		obj_player.phy_speed_y = momentum * negCos
		obj_player.phy_speed_x = momentum * negSin
		momentum += negSin * 0.2
	}
	else if(obj_player.y > aty and momentum > 0)
	{
		negCos = cos(angle * (pi / 180))
		negSin = sin(angle * (pi / 180))
		obj_player.phy_speed_y = momentum * negCos
		obj_player.phy_speed_x = momentum * negSin
		momentum -= negSin * 0.2
	}
	else
	{
		instance_destroy();
	}
}
else
{
	obj_player.phy_speed_y += 0.2
}