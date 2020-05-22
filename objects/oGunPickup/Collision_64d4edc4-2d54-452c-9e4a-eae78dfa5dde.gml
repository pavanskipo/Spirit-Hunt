
global.hasgun = true;
instance_create_layer(oPlayer.x, oPlayer.y, "Gun", oGun);
instance_destroy();
audio_play_sound(snPickup, 10, false);