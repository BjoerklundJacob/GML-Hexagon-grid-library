///@param x
///@param y

var _x = argument0;
var _y = argument1;

draw_hex(_x,_y);


var _cube = hex_pixel_to_cube([_x,_y]);
if (_cube != undefined){
	var _xStr,_yStr,_zStr;
	if (_cube[X] == 0 && _cube[Y] == 0 && _cube[Z] == 0){
		_xStr = "X";
		_yStr = "Y";
		_zStr = "Z";
	}
	else{
		_xStr = string(_cube[X]);
		_yStr = string(_cube[Y]);
		_zStr = string(_cube[Z]);
	}

	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	var _len = HEX_SIZE * .4;

	var _dir = 150;
	var _xx = _x + lengthdir_x(_len,_dir);
	var _yy = _y + lengthdir_y(_len,_dir);
	draw_set_color(c_red);
	draw_text(_xx,_yy,_xStr);

	var _dir = 30;
	var _xx = _x + lengthdir_x(_len,_dir);
	var _yy = _y + lengthdir_y(_len,_dir);
	draw_set_color(c_green);
	draw_text(_xx,_yy,_yStr);

	var _dir = 270;
	var _xx = _x + lengthdir_x(_len,_dir);
	var _yy = _y + lengthdir_y(_len,_dir);
	draw_set_color(c_blue);
	draw_text(_xx,_yy,_zStr);
}