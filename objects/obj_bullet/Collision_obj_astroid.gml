score += 10;

audio_play_sound(snd_hurt, 1, false);

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_astroid_large){
		repeat(2){
			var new_astroid = instance_create_layer(x,y, "Instances", obj_astroid);
			new_astroid.sprite_index = spr_astroid_med;
		}
		
	} else if(sprite_index == spr_astroid_med){
		repeat(2){
			var new_astroid = instance_create_layer(x,y, "Instances", obj_astroid);
			new_astroid.sprite_index = spr_astroid_small;
		}
	}
	repeat(10){
		instance_create_layer(x,y, "Instances", obj_debris);
	}
}