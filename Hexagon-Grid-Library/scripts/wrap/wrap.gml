/// @description wrap(value,min,max)
/// @function wrap
/// @param value
/// @param min
/// @param max
//returns the value wrapped.  If it is above or below the threshold it will wrap around
//Does include min and  NOT max
var _val=argument[0];
var _max = argument[2];
var _min = argument[1];

var _pool = _max - _min;

return _val-floor(_val/_pool)*_pool + _min;