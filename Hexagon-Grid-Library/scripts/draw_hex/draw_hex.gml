///@param x
///@param y

var _x = argument0;
var _y = argument1;

for (var _i = 0; _i < 6; ++_i){
	var _c1 = hex_corner(_i);
	var _c2 = hex_corner(wrap(_i+1,0,6));
	
	draw_line(_x + _c1[X],_y + _c1[Y],_x + _c2[X],_y + _c2[Y]);
}