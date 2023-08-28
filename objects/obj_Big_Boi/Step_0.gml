function attack() {
	show_debug_message("Attack!");
}

if (!isStunned) {
	
	if (place_meeting(x, y, obj_Bullet)) {
		isStunned = true;
		alarm[0] = 30;
	}
	if (!place_meeting(x, y, obj_Player)) {
		mp_potential_step_object(obj_Player.x, obj_Player.y, MOVE_SPEED, id);
	} else {
		speed = 0;
		attack();
	}
} else {
	sprite_index = spr_big_boi_hit;
}