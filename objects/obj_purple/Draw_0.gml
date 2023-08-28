draw_self();

var _gunAngle = point_direction(x, y, mouse_x, mouse_y);
var _gunMirror = (_gunAngle >= 90 and _gunAngle <= 270) ? -1 : 1;

draw_sprite_ext(spr_Gun, 0, x, y, 1, _gunMirror, _gunAngle, c_white, 1);