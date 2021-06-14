if(room == rm_game){
	if(audio_is_playing(snd_background)){
		audio_stop_sound(snd_background);
	}
	audio_play_sound(snd_background, 2, true);
	
	repeat(10){
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
			);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
			);
		instance_create_layer(xx, yy, "Instances", obj_astroid);
	}
	
	alarm[0] = 60;
}