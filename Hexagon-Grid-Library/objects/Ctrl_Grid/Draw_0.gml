for (var _i = 0; _i <= 2*HEX_GRID_RADIUS; ++_i){
	var _row = grid[_i];
	for (var _j = 0; _j < array_length_1d(_row); ++_j){
		var _cube = hex_grid_to_cube([_i,_j]);
		var _coord = hex_cube_to_pixel(_cube);
		//draw_set_colour(c_white);
		//draw_hex_debug(_coord[X],_coord[Y]);
		draw_sprite_ext(Spr_HexagonTiles,hex_cell_value(_cube),_coord[X],_coord[Y],1,1,-30+HEX_ROTATION,c_white,1);
	}
}

//Path (should not be called every step if can be avoided, but for simple testing it's okay)
var _path = hex_path([0,0,0],hoveredCell);
if (_path != undefined){
	for (var _i = 0; _i < ds_list_size(_path); _i++){
		draw_set_color(c_purple);
		var _cube = _path[| _i];
		var _coord = hex_cube_to_pixel(_cube);
		draw_hex(_coord[X],_coord[Y]);
	}
	
	ds_list_destroy(_path);
}

//Draw hovered cell
var _coord = hex_cube_to_pixel(hoveredCell);
draw_set_colour(c_green);
draw_hex_debug(_coord[X],_coord[Y]);
var _gridCoord = hex_cube_to_grid(hoveredCell);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(10,10,"("+string(_gridCoord[X])+"; "+string(_gridCoord[Y])+")");