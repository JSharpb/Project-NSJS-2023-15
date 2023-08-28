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

// Collision
if (place_meeting(x + velocity.x, y, obj_Wall))
{
	while (!place_meeting(x + sign(velocity.x), y, obj_Wall))
	{
		x += sign(velocity.x);
	}
	velocity.x = 0;
}

if (place_meeting(x, y + velocity.y, obj_Wall))
{
	while (!place_meeting(x, y + sign(velocity.y), obj_Wall))
	{
		y += sign(velocity.y);
	}
	velocity.y = 0;
}
	

// Commit movement
x += velocity.x / sqrt(MOVE_SPEED);
y += velocity.y / sqrt(MOVE_SPEED);