///@param [x,y,z]
///@param value

var _cell = argument0;
var _value = argument1;

if (hex_cell_exists(_cell)){
	var _gridCoord = hex_cube_to_grid(_cell);
	var _col = HEX_GRID[_gridCoord[X]];
	_col[@ _gridCoord[Y]] = _value;
}
else{
	show_debug_message("Tryed writing hex cell out of bounds! "+hex_cube_to_string(_cell)+" Size is "+string(HEX_GRID_RADIUS));
}