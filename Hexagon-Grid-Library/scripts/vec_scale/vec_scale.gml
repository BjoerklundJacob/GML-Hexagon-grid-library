///@param vec
///@param scale

var _a = argument0;
var _scale = argument1;

var _size = array_length_1d(_a);
for (var _i = 0; _i < _size; ++_i){
	_a[_i] *= _scale;
}

return _a;