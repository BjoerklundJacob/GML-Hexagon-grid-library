///@param [x,y]

var _grid = argument0;

var _x = _grid[X] - HEX_GRID_RADIUS;
var _y = HEX_GRID_RADIUS - _grid[Y] - (_x > 0 ? _x : 0);
var _z = -_x-_y;

return [_x,_y,_z];