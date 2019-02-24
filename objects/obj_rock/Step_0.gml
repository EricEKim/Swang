/// @description Insert description here
// You can write your code in this editor
randomize()
num = irandom_range(1,200)
if num < 2 and counter % 2 == 0{
	show_debug_message(num)
	xp = irandom_range(obj_player.x,obj_player.x+150)
	yp = -50
	abc = instance_create_depth(xp,yp,1,obj_rock)
	counter += 1
}