class_name Room extends Node

#region Export Settings
@export_category("Settings")
## Toggles Visual map
@export var drawVisual : bool = false
@export_group("RoomSettings")
@export var minWidth = 8
@export var maxWidth = 20
@export var minHeight = 8
@export var maxHeight = 20
@export var trimTiles = 1
@export var corridorMargin = 1
@export var minCorridorThickness = 2
#endregion
#start size
var left : int = 0
var right : int = 100
var top : int = 0
var bottom : int = 100

var leftRoom
var rightRoom

#drawing
var tileSize = 25

var rng = RandomNumberGenerator.new()

#region room size
func GetWidth():
	print_debug(right - left + 1)
	return right - left + 1
	
func GetHeight():
	print_debug(top - bottom + 1)
	return top - bottom + 1
	
#endregion

#region draw
func drawTile():
	
	#loop for room size
	var  x = left
	var y = top
	var p1 : Array
	var p2 : Array
	while x < right:
		x += 1 * tileSize
		y = top
		while y < bottom:
			y += 1 * tileSize
			# make tiles
			print("draw")
			p1.append(Vector2(x,y))
			p2.append(Vector2(x+tileSize,y+tileSize))
			print(p1)
			print(p2)
			if x == right:
				return [p1,p2]
			
func CheckdrawVisual():
	return drawVisual
#endregion

#region random split
func split():
	if GetHeight() < minHeight and GetWidth() < minWidth:
		print_debug('Small Room')
	#define rand
	var rand = rng.randf_range(0, 1)
	print_debug(rand)
	#attempt random split
	if rand < 0.5 and GetWidth() >= 2* minWidth:
		verticalSplit()
	elif GetHeight() >= 2 * minHeight:
		horizontialSplit()
	
	#force split if too big
	if GetWidth() > maxWidth:
		verticalSplit()
	if GetHeight() > maxHeight:
		horizontialSplit()

#for this make a cut in a random position without making the rooms too small.
func verticalSplit():
	print("vert")
func horizontialSplit():
	print("hori")


#endregion

func test():
	return [1,2]
