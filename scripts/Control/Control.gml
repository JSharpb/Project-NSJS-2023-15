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
	} else if (isPlanted) {
		if (keyboard_check(vk_space) && instance_find(obj_spore_mist, 0) == noone) {
			Burst(id, 6);
		}
	} else {
		move_towards_point(global.room_center.x, global.room_center.y, min(moveSpeed, point_distance(x - (width / 2), y - (height / 2), global.room_center.x, global.room_center.y)));
		PositionCheck();
	}
}