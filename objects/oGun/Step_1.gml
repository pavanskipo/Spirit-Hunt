x = oPlayer.x + 2;
y = oPlayer.y + 18;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingDelay -= 1;
recoil = max(0, recoil -1);

if (mouse_check_button(mb_left) and (firingDelay < 0 )) {
		recoil = 4;
		firingDelay = 5;
		ScreenShake(2, 10);
		audio_sound_pitch(snShot, choose(0.8, 1.0, 1.2));
		audio_play_sound(snShot, 5, false);
		with (instance_create_layer(x, y, "Bullets", oBullet)) {
			spd = 25;	
			direction = other.image_angle + random_range(-2, 2);
			image_angle = direction;
		}
	
	//Gun kickback
		with(oPlayer) {
			gunkickx = lengthdir_x(1.5, other.image_angle-100);
			gunkicky = lengthdir_y(1, other.image_angle-180);
		}
		
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);


if (image_angle > 90 and image_angle < 270 ) {
	image_yscale = -1;	
} else {
	image_yscale = 1;
}