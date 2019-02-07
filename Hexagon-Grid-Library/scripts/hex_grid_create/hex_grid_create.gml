///@param radius

var _radius = argument0;

var _cols = _radius*2 +1;

var _grid = array_create(_cols);

for (var _i = 0; _i < _radius; ++_i){
	_grid[_i] = array_create((_radius+1) + _i,EHEX_CELL.EMPTY);
}
_grid[_i] = array_create(_cols);
for (var _i = _radius+1; _i < _cols; ++_i){
	_grid[_i] = array_create(_cols - (_i - _radius),EHEX_CELL.EMPTY);
}

return _grid;