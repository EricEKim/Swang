/// @description Insert description here
// You can write your code in this editor
angle = point_direction(obj_player.x, obj_player.y, atx, aty)
xdiff = atx - obj_player.x
ydiff = aty - obj_player.y
len = sqrt(sqr(xdiff) + sqr(ydiff))
vx = xdiff/len
vy = ydiff/len
acLength = sqrt(sqr(xdiff) + sqr(ydiff))
if(acLength > rope)
{
		a = 1
		/*if(obj_player.x < atx)
		{
				fix = cos(angle * (pi / 180))
				show_debug_message(angle)
				show_debug_message(fix)
				ySpeed = obj_player.phy_speed_y
				fix = fix * ySpeed
				obj_player.phy_speed_y -= fix
				obj_player.phy_speed_x += fix
				//obj_player.phy_position_y -= fix
		}
		else
		{
				fix = cos(angle * (pi / 180))
				show_debug_message(angle)
				show_debug_message(fix)
				ySpeed = obj_player.phy_speed_y
				fix = fix * ySpeed
				obj_player.phy_speed_y -= fix
				obj_player.phy_speed_x -= fix
		}*/
}
if(a == 1)
{
	fix = cos(angle * (pi / 180))
	//show_debug_message(angle)
	show_debug_message(fix)
	ySpeed = obj_player.phy_speed_y
	fix = fix * ySpeed
	obj_player.phy_speed_y -= fix
	obj_player.phy_speed_x += fix
}