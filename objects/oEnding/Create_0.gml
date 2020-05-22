
gunSprite = layer_sprite_get_id("titleAsset", "gGun");

if(global.hasgun == true) and global.kills > 0 {
	endtext[0] = "And on this day our Hunter has slain " + string(global.kills) + " Spirits";
	endtext[1] = "He later went on to be the world's greater Spirit Hunter";
	endtext[2] = "The End.";
} else {
	layer_sprite_destroy(gunSprite);
	endtext[0] = "And on this day our Hunter has slain " + string(global.kills) + " Spirits";
	endtext[1] = "He later went on to be the world's kindestl Spirit Hunter";
	endtext[2] = "The End.";
}

spd = 0.5;
letters = 0;
currentline =0;
length = string_length(endtext[currentline]);
text = "";