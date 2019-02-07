///@param hex_cube

var _vec = argument0;

//if (HEX_STYLE == HEX_FLAT){
//	var _x = HEX_SIZE * (3/2 * _vec[X]) + GRID_CENTER_X;
//	var _y = HEX_SIZE * (sqrt(3)/2 * _vec[X] + sqrt(3) * _vec[Y]) + GRID_CENTER_Y;
//}
//else{
//	var _x = HEX_SIZE * (sqrt(3) * _vec[X] + sqrt(3)/2 * _vec[Y]) + GRID_CENTER_X;
//	var _y = HEX_SIZE * (3/2  * _vec[Y]) + GRID_CENTER_Y;
//}

var _xVec = vec_scale([dcos(HEX_ROTATION-30),-dsin(HEX_ROTATION-30)],sqrt(3)*HEX_SIZE);//From (0;0) to (1;0)
var _yVec = vec_scale([dsin(HEX_ROTATION),dcos(HEX_ROTATION)],sqrt(3)*HEX_SIZE);//From (0;0) to (0;1)

var _x = (_xVec[X] * _vec[X] + _yVec[X] * _vec[Y]) + GRID_CENTER_X;
var _y = (_xVec[Y] * _vec[X] + _yVec[Y] * _vec[Y]) + GRID_CENTER_Y;

return [_x, _y];