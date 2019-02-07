///@param id

var _list = argument0;

//Inverts the order of a ds_list

var _size = ds_list_size(_list);

var _invertedList = ds_list_create();

for (var _i = _size-1;_i >= 0; --_i){
	ds_list_add(_invertedList,_list[| _size-1 - _i]);
}

return _invertedList;