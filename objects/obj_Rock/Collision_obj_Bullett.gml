effect_create_above(ef_explosion,x,y,1,c_white);
direction = other.direction;
var pow = other.ob_power;
instance_destroy(other);
audio_play_sound(snd_Phekh,0,false,0.05,0,random_range(0.618*0.618,0.618));

if helth > 0
{
	helth -= pow;
	obj_Game.points += pow;
}
else 
{
	obj_Game.points += 5;
	if obj_Game.powerup and object_exists(obj_Player)
	{
		var _obj = choose(obj_pow_spread,obj_pow_speed);
		instance_create_layer(x,y,"Instances", _obj);
		obj_Game.alarm[1] = 20*60;
		obj_Game.powerup = false;
	}
	if sprite_index == spr_rock_big
	{
		obj_Game.points += 5;
		sprite_index = spr_rock_small;
		helth += 1 + random(1.618);
		instance_copy(true);
	}
	else if instance_number(obj_Rock) < instance_number(obj_Bullett)
	{
		sprite_index = spr_rock_big;
		x = -100
		y = random(100)
	}
	else
	{
		instance_destroy();
	}
}