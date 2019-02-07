///@param [x1,y1,z1]
///@param [x2,y2,z2]

var _start = argument0;
var _end = argument1;

var _visitedMap = ds_map_create();
var _priority = ds_priority_create();

var _path = undefined;
var _moves = 0;

//Start with starting cell
if (hex_cell_exists(_start) && hex_cell_exists(_end)){
	//Make sure start and end is not solid
	if (hex_cell_value(_start) != EHEX_CELL.SOLID
	 && hex_cell_value(_end) != EHEX_CELL.SOLID){
		//Add to priority list
		ds_priority_add(_priority,_start,0);
	 }
}

//Go through every cell to find a path between points (if it exists)
while(ds_priority_size(_priority) > 0){
	var _cell = ds_priority_delete_min(_priority);
	_moves++;
	//If neighbor is the end
	if (vec_compare(_cell,_end)){
		_path = ds_list_create();
		//Reroll to create path
		while(!vec_compare(_cell,_start)){
			//Add current cell
			ds_list_add(_path,_cell);
			//Find next cell
			_cell = _visitedMap[? hex_cube_to_string(_cell)];
		}
		//Starting point is not added
		break;
	}
	//Loop through neighbors
	for (var _i = 0; _i < 6; ++_i){
		var _neighbor = hex_neighbor_cube(_cell,_i);
		if (hex_cell_exists(_neighbor)){
			var _cellKey = hex_cube_to_string(_neighbor);
			//If cell has not already been visited
			if (hex_cell_value(_neighbor) != EHEX_CELL.SOLID && !ds_map_exists(_visitedMap,_cellKey)){
				//Add neighbor to queue
				ds_priority_add(_priority,_neighbor,_moves + hex_distance_cube(_start,_neighbor));
				//Store where the cell came from
				ds_map_add(_visitedMap,_cellKey,_cell);
			}
		}
	}
}

ds_map_destroy(_visitedMap);
ds_priority_destroy(_priority);

return _path;//Path is from end to start