//https://www.redblobgames.com/grids/hexagons/
gml_pragma("global","HEX_INIT()");

global.hex_rotation = HEX_FLAT;

#macro HEX_ROTATION global.hex_rotation
#macro HEX_FLAT 0
#macro HEX_POINTY 30

#macro HEX_SIZE (55/2)
#macro HEX_GRID_RADIUS 5
#macro GRID_CENTER_X room_width/2
#macro GRID_CENTER_Y room_height/2
#macro HEX_GRID Ctrl_Grid.grid


//X + Y + Z = 0
#macro X 0
#macro Y 1
#macro Z 2

enum EHEX_CELL{
	EMPTY,
	SOLID
}