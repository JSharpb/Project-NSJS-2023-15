function Control(){
	if (isActive) {
		velocity.x = 0;
		velocity.y = 0;
		
		if (keyboard_check(ord("W"))) {
			velocity.y = -1;
		}
		
		if (keyboard_check(ord("S"))) {
			velocity.y = 1;
		}
		
		if (keyboard_check(ord("A"))) {
			velocity.x = -1;
		}
		
		if (keyboard_check(ord("D"))) {
			velocity.x = 1;
		}
		
		//Move
		if (velocity.x = 0 || velocity.y == 0) {
			x += velocity.x * moveSpeed;
			y += velocity.y * moveSpeed;
		} else {
			x += velocity.x * sqrt(moveSpeed);
			y += velocity.y * sqrt(moveSpeed);
		}
	}
	if (isPlanted && instance_find(obj_spore_mist, 0) == noone) {
		if (keyboard_check(vk_space)) {
			Burst(id);
		}
	}
}