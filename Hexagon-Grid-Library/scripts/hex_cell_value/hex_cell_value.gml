///@param [x,y,z]

var _cell = argument0;

if (hex_cell_exists(_cell)){
	var _gridCoord = hex_cube_to_grid(_cell);
	var _col = HEX_GRID[_gridCoord[X]];
	return _col[_gridCoord[Y]];
}

show_debug_message("Tryed reading hex cell out of bounds! "+hex_cube_to_string(_cell)+" Size is "+string(HEX_GRID_RADIUS));
return undefined;