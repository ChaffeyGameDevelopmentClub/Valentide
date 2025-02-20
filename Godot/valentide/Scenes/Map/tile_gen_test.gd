extends Node3D

#region var
var roomOpening : Dictionary = {
	hall = 2,
	flat = 4,
	tjoint = 3,
	corner = 2,
	dEnd = 1,
	}

var rng = RandomNumberGenerator.new()
#endregion

#region Functions
func GenMap():
	var my_random_number = rng.randi_range(0, 10)
	print(my_random_number)
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GenMap()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
