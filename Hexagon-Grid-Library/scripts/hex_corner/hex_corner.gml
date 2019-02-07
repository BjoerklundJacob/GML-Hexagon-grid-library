///@param i

//var _dir = argument0*60 + (HEX_STYLE == HEX_FLAT ? 0 : 30);

var _dir = argument0*60 + HEX_ROTATION;

return [lengthdir_x(HEX_SIZE,_dir),lengthdir_y(HEX_SIZE,_dir)];