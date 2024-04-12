///@description Trigger room restart
if (bbox_top > room_height){
	instance_destroy();
	obj_control.alarm[0] = game_get_speed(gamespeed_fps);
}