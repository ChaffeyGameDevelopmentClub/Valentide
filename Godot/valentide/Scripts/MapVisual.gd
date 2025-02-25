extends Control

@export var room : Node

@onready var p = room.drawTile()
var multi = 2

func _draw():
	#draw bg
	print("-------------------------")
	print(p[0])
	print("-------------------------")
	print(p[1])
	var p1 = p[0]
	var p2 = p[1]
	for i in p[0]:
		draw_rect(Rect2(p1[i],p2[i]), Color.BLACK)
	#draw_rect(Rect2(p[0]*multi,p[1]*multi), Color.BLACK)
	#draw_rect(Rect2(5.5, 1.5, 2.0, 2.0), Color.GREEN, false, 1.0)
	pass

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	queue_redraw()
