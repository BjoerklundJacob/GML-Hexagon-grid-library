///@param [x,y,z]

var _cube = argument0;

var _x = _cube[X] + HEX_GRID_RADIUS;
var _y = HEX_GRID_RADIUS + _cube[Y] + (_cube[X] < 0 ? _cube[X] : 0);

return [_x,_y];