///@param a
///@param b

var _a = argument0;
var _b = argument1;

var _size = array_length_1d(_a);

var _vec = array_create(_size);

for (var _i = 0; _i < _size; ++_i){
	_vec[_i] = _a[_i] - _b[_i];
}

return _vec;