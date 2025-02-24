class_name tile_gen_test extends Node3D
#region classes
var visScript = load("res://Scripts/MapVisual.gd")
var vis = visScript.new()
#endregion

#region Export Nodes
@export_group("Nodes")
@export var gridmap : GridMap
@export var visual : Control
@export var room : Node
#@export var room
#endregion

#region Room Vars
var rng = RandomNumberGenerator.new()
#How to define openings
#
#		3
#	4	#Room#	2
#		1
#
#Rotations numbers
# 0 = 0 deg
# 16 = 90 deg
# 10 = 180 deg
# 22 = 270 deg
var roomOpening : Dictionary = {
	hall = [1,3],
	flat = [1,2,3,4],
	tjoint = [1,2,3],
	corner = [3,4],
	dEnd = [2]
	}

#room gen
var horizontalSplit : bool
var verticalSplit : bool

#endregion

#region MapVisual
#renders data to send to visual node


#endregion

# How to make maze 
# This is good inspo and idea of how to make it https://medium.com/@guribemontero/dungeon-generation-using-binary-space-trees-47d4a668e2d0
# idea is to genderate a "map" of coords that can connect and build custom rooms or use prefabs

#region Functions
func rotateGrid(angle):
	#rotates around y Axis
	var axisGrid = Vector3(0,1,0)
	var rotAmount = deg_to_rad(angle)
	var rotationIndex = gridmap.get_orthogonal_index_from_basis(Basis(axisGrid, rotAmount))
	return rotationIndex
	
func GenMap():
	var my_random_number = rng.randi_range(0, 10)
	#print(my_random_number)
	#gridmap.set_cell_item(Vector3(0,0,0),4,rotateGrid(0))
	

#func test():
	#gridmap.set_cell_item(Vector3(0,0,0),3,0)
	#print("placed")
	#print(gridmap.get_used_cells_by_item(1))
	##opening is (2,0,0)
	##idea is to gen at (3,0,0) and use rand and if else to gen/determine where to place stuff.
	#var randItem = rng.randi_range(0,3)
	##Rot not done yet
	#var _randRot = rng.randi_range(0,3)
	#var x = 10
	#while x>0:
		#x -= 1
		#randItem = rng.randi_range(0,3)
		#print(randItem)
		#var pos = Vector3(x,0,0)
		#print(pos)
		#gridmap.set_cell_item(pos,randItem,0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#GenMap()
	if room.CheckdrawVisual():
		visual.show()
		room.split()
	else:
		print("off")
	#test()
