speed = 4 + obj_Player.speed * 5;
direction = obj_Player.image_angle;
image_angle = direction;
ob_power = 1.0 + obj_Player.speed * 8;
image_xscale = random_range(3,5) + ob_power;
image_yscale = random_range(1,2)/2;