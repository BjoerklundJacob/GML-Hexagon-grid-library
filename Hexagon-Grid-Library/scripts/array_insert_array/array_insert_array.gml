///@param dest
///@param source
///@param index

var _dest = argument0;
var _src = argument1;
var _index = argument2;

var _size = array_length_1d(_src);

for (var _i = 0; _i < _size; ++_i){
	_dest[_index + _i] = _src[_i];
}

return _dest;