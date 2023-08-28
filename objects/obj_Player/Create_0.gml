// State data
isPlanted = false;

// Const
MOVE_SPEED = 3;
GUN_OFFSET = 28;

enum Guns { PISTOL, RIFLE, MISSLE_LAUNCHER, SIZE }


// Properties
velocity = {
	x: 0,
	y: 0
}

currentGun = Guns.PISTOL;
gunAngle = 0;