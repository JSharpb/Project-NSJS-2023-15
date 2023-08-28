draw_self();

gunAngle = point_direction(x, y, mouse_x, mouse_y);
var _gunMirror = (gunAngle >= 90 and gunAngle <= 270) ? -1 : 1;

draw_sprite_ext(spr_Gun, 0, x, y, 1, _gunMirror, gunAngle, c_white, 1);