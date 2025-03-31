

if keyboard_check(vk_up) or keyboard_check(ord("W"))
{
	motion_add(image_angle, speedstep);

}

if keyboard_check(vk_left) or keyboard_check(ord("A"))
{
	image_angle += 4;
}

if keyboard_check(vk_right) or keyboard_check(ord("D"))
{
	image_angle -= 4;
}

if keyboard_check(vk_down) or keyboard_check(vk_space) or keyboard_check(ord("S"))
{
	if (speed < speedstep) motion_set(direction,0);
	else motion_set(direction,speed*0.9);
}

if keyboard_check_pressed(vk_shift) or keyboard_check(vk_control)
{
	for (var i = 0; i < shots; i += 1)
	{
		var _blt = instance_create_layer(x+random_range(-jit,jit), y+random_range(-jit,jit), "Instances", obj_Bullett);
		_blt.direction += random_range(-spread,spread)
	}
	audio_play_sound(snd_beww,0,false,0.08,0,random_range(.618,1));
}

move_wrap(true, true, 16*4+1);


if (speed > maxspeed) 
{
	motion_set(direction,maxspeed);
}

if (speed > maxspeed*0.9) 
{
	image_blend = c_lime;
}
else
{
	alarm[1] = 3*60;
}


if plr_helth <= 0 and room != rm_menu
{
	effect_create_above(ef_firework,x,y,1,c_white);
	instance_destroy();
	obj_Game.alarm[0] = 120;
}