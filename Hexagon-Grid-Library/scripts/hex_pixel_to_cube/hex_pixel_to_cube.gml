///@param [x,y]

var _pixelCoord = argument0;
var _px = _pixelCoord[X] - GRID_CENTER_X;
var _py = _pixelCoord[Y] - GRID_CENTER_Y;

//if (HEX_STYLE == HEX_FLAT){
//	var _x = (2/3 * _px) / HEX_SIZE;
//	var _y = (-1/3 * _px + sqrt(3)/3 * _py) / HEX_SIZE;
//}
//else{
//	var _x = (sqrt(3)/3 * _px + (-1/3) * _py) / HEX_SIZE;
//	var _y = (2/3 * _py) / HEX_SIZE;
//}

var _xVec = vec_scale([dcos(HEX_ROTATION-30),-dsin(HEX_ROTATION-30)],sqrt(3));//From (0;0) to (1;0)
var _yVec = vec_scale([dsin(HEX_ROTATION),dcos(HEX_ROTATION)],sqrt(3));//From (0;0) to (0;1)

var _determinant = 1/(_xVec[X]*_yVec[Y] - _yVec[X]*_xVec[Y]);

var _xVecInv = vec_scale([_yVec[Y],-_xVec[Y]],_determinant);
var _yVecInv = vec_scale([-_yVec[X],_xVec[X]],_determinant);

//Replicate the 1/x here
var _x = (_px*_xVecInv[X] + _py*_yVecInv[X]) / HEX_SIZE;
var _y = (_px*_xVecInv[Y] + _py*_yVecInv[Y]) / HEX_SIZE;
var _z = -_x-_y;

var _cube = hex_cube_round([_x,_y,_z]);

return hex_cell_exists(_cube) ? _cube : undefined;