/// @description Deal wirh music and more

// Play music based on Room
switch room {
	case rm_GameMain: {
		audio_play_sound(snd_townBGM, 1, 1);// audio function
		audio_play_sound(snd_townAmbience, 1, 1);// audio function
	}; break;
}