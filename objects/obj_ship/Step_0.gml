if(keyboard_check(vk_left)){
	if(rotate_speed < 5){
		rotate_speed += 0.5;
	}
}

if(keyboard_check(vk_right)){
	if(rotate_speed > -5){
		rotate_speed -= 0.5;
	}
}

image_angle += rotate_speed;

if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.05);
}

if(keyboard_check(vk_down)){
	if(rotate_speed < 0){
		rotate_speed += 0.1;
	}
	else if(rotate_speed > 0){
		rotate_speed -= 0.1;
	}
}

move_wrap(true, true, sprite_width/2);