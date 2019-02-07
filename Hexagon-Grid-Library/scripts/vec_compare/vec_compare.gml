///@param a
///@param b

var _a = argument0;
var _b = argument1;

var _size = array_length_1d(_a);

var _match = true;

for (var _i = 0; _i < _size; ++_i){
	if (_a[_i] != _b[_i]){
		_match = false;
		break;
	}
}

return _match;