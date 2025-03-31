if other.sprite_index == spr_bullet_dgr and ff
{
	plr_helth -= other.ob_power;
	instance_destroy(other);
	effect_create_above(ef_firework,x,y,1,c_white);
	audio_play_sound(snd_Phekh,0,false,0.05,0,random_range(1,1.618));
}