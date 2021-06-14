if(keyboard_check(vk_left))or(keyboard_check(ord("A"))){
	image_angle += 5;
}

if(keyboard_check(vk_right))or(keyboard_check(ord("D"))){
	image_angle -= 5;
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.05);
}

if(keyboard_check_pressed(ord("Z")))or(keyboard_check_pressed(ord("X"))){
	var inst = instance_create_layer(x,y, "Instances", obj_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_zap, 1, false);
}

move_wrap(true, true, sprite_width/2);