// Set Speed
velocity.x = 0;
velocity.y = 0;
		
if (keyboard_check(ord("W"))) {
	velocity.y = -MOVE_SPEED;
}
		
if (keyboard_check(ord("S"))) {
	velocity.y = MOVE_SPEED;
}
		
if (keyboard_check(ord("A"))) {
	velocity.x = -MOVE_SPEED;
}
		
if (keyboard_check(ord("D"))) {
	velocity.x = MOVE_SPEED;
}
	

// Commit movement
x += velocity.x / sqrt(MOVE_SPEED);
y += velocity.y / sqrt(MOVE_SPEED);