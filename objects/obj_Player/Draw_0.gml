draw_self();

gunAngle = point_direction(x, y, mouse_x, mouse_y);
var _gunMirror = (gunAngle >= 90 and gunAngle <= 270) ? -1 : 1;
var _gunSprite = spr_yellow;

switch (currentGun)
{
	case Guns.PISTOL:
		_gunSprite = spr_Gun;
		break;
		
	case Guns.RIFLE:
		_gunSprite = spr_Rifle;
		break;
		
	case Guns.MISSLE_LAUNCHER:
		_gunSprite = spr_Door;
		break;
}
draw_sprite_ext(_gunSprite, 0, x, y, 1, _gunMirror, gunAngle, c_white, 1);