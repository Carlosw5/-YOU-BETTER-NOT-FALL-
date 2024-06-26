/// @desc Core Player Logic

//Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

//Jump
if (place_meeting(x,y+1, oWall)){
	currjumps = 0;
}

if (key_jump and (currjumps < maxjumps)) {
	vsp = -jumpsp;
	currjumps += 1;
}
	
//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (place_meeting(x+hsp,y,obj_powers))
{
	points += 1;
	instance_destroy(obj_powers)
}
	
//Vertical collision
if (place_meeting(x,y+vsp,obj_powers1))
{
	points += 1;
	instance_destroy(obj_powers1)
}


if (place_meeting(x+hsp,y,obj_powers1))
{
	points += 1;
	instance_destroy(obj_powers1)
}
	
//Vertical collision
if (place_meeting(x,y+vsp,obj_powers2))
{
	points += 1;
	instance_destroy(obj_powers2)
}

if (place_meeting(x+hsp,y,obj_powers2))
{
	points += 1;
	instance_destroy(obj_powers2)
}
	
//Vertical collision
if (place_meeting(x,y+vsp,obj_powers2))
{
	points += 1;
	instance_destroy(obj_powers2)
}

if(points == 3){
	room_goto(Room2)
}

if (place_meeting(x+hsp,y,obj_key))
{
	key_count += 1;
	instance_destroy(obj_key)
}
	
//Vertical collision
if (place_meeting(x,y+vsp,obj_key))
{
	key_count += 1;
	instance_destroy(obj_key)
}

if(key_count == 1){
	room_goto(Room3)
}



if (place_meeting(x+hsp,y,Object10))
{
	t_pole += 1;
	instance_destroy(Object10)
}
	
//Vertical collision
if (place_meeting(x,y+vsp,Object10))
{
	t_pole += 1;
	instance_destroy(Object10)
}

if(t_pole == 1){
	room_goto(rm_win)
}






if (place_meeting(x+hsp,y,obj_enemy))
{
	pDead += 1;
	instance_destroy(oPlayer)
}
	
//Vertical collision
if (place_meeting(x,y+vsp,obj_enemy))
{
	pDead += 1;
	instance_destroy(oPlayer)
}

if(pDead == 1){
	room_goto(rm_start)
}

