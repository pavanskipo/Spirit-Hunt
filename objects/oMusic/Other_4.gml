
audio_stop_all();
if(room == rMenu) {
	audio_play_sound(sIntroTheme, 100, true);
} else if (room == rEnding) {
	audio_play_sound(sEndingTheme, 100, true);
}