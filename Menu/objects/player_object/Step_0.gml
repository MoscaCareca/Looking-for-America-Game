//Player Input

key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

//Movimento Horizontal

var hor_move = key_right - key_left;
vel_hor = hor_move * walk_vel;

	//Colisão Horizontal
	
if (place_meeting(x + vel_hor, y, wall_object))
{
 
	while (!place_meeting(x + sign(vel_hor), y, wall_object))
	{
		x = x + sign(vel_hor)
	}
 
	vel_hor = 0;
 
}

x = x + vel_hor

//Movimento Vertical

var vert_move = key_down - key_up;
vel_vert = vert_move * walk_vel;

	//Colisão Vertical
	
if (place_meeting(x, y + vel_vert, wall_object))
{
 
 while (!place_meeting(x, y + sign(vel_vert), wall_object))
 {
	y = y + sign(vel_vert)
 }
 
 vel_vert = 0;
 
}

y = y + vel_vert