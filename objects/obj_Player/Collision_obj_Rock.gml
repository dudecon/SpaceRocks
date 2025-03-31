if not rf exit;

plr_helth -= 1;
effect_create_above(ef_firework,x,y,1,c_white);
audio_play_sound(snd_Phekh,0,false,0.05,0,random_range(0.618*0.618,0.618));