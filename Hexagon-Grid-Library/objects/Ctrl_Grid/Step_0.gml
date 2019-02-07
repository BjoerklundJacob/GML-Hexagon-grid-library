var _cube = hex_pixel_to_cube([mouse_x,mouse_y]);
if (_cube != undefined){
	hoveredCell = _cube;
}

//Rotate grid
var _dir = keyboard_check(vk_right) - keyboard_check(vk_left);
HEX_ROTATION += 30/room_speed*_dir;

//Set or delete solid block
if (mouse_check_button_pressed(mb_left)){
	setValue = !hex_cell_value(hoveredCell);
}
if (mouse_check_button(mb_left)){
	hex_cell_value_set(hoveredCell,setValue);
}