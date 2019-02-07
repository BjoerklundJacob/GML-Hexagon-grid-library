///@param [x,y,z]

var _hexCube = argument0;

var _rx = round(_hexCube[X]);
var _ry = round(_hexCube[Y]);
var _rz = round(_hexCube[Z]);

var _xDiff = abs(_rx - _hexCube[X]);
var _yDiff = abs(_ry - _hexCube[Y]);
var _zDiff = abs(_rz - _hexCube[Z]);

if (_xDiff > _yDiff && _xDiff > _zDiff){
	_rx = -_ry-_rz;
}
else if (_yDiff > _zDiff){
	_ry = -_rx-_rz;
}
else{
	_rz = -_rx-_ry;
}

return [_rx,_ry,_rz];