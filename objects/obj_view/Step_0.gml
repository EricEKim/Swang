/// @description Insert description here
// You can write your code in this editor
x = obj_player.x + 300
y = obj_player.phy_position_y - 20 + yOffset
if(instance_exists(obj_web) and yOffset > -32)
{
	yOffset -= 4
}
else if(obj_player.phy_speed_y > 0 and yOffset < 32 and !instance_exists(obj_web))
{
	yOffset += 4
}
else if(yOffset > 0 and obj_player.phy_speed_y <= 0)
{
	yOffset -= 4
}
else if(yOffset < 0 and !instance_exists(obj_web))
{
	yOffset += 4
}
