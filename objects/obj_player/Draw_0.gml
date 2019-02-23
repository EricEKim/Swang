/// @description Insert description here
// You can write your code in this editor
draw_self();    // This is to make sure the sprite image is being drawn.

if(restart){
	draw_set_color(c_red);
	show_debug_message(camera_get_view_x(view_camera[0]))
    draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])/2, "Game Over. Press Enter to restart.");
}