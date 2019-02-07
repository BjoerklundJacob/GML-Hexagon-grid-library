///@param center
///@param radius

var _center = argument0;
var _radius = argument1;

//Array containing all cells in ring
var _ring = array_create(_radius * 6);
var _i = 0;

//First cell in ring
var _cube = vec_add(_center,vec_scale(hex_cube_direction(0),_radius));

//For each direction
for (var _dir = 0; _dir < 6; ++_dir){
	//For each neighbour cell in that direction
	for (var _j = 0; _j < _radius; ++_j){
		_ring[_i] = _cube;
		_cube = hex_neighbor_cube(_cube,_i);
	}
}

return _ring;