///@param center
///@param radius

var _center = argument0;
var _radius = argument1;

var _size = 1;
for (var _i = 1; _i <= _radius; ++_i){
	_size += 6 * _i;
}
var _cells = array_create(_size);
var _i = 0;

_cells[_i] = _center;

for (var _r = 1; _r <= _radius;++_r){
	var _cells = array_insert_array(_cells,hex_ring_cube(_center,_r),_i);
	_i += 6*_r;
}
return _cells;