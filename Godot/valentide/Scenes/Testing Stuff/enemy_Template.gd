extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

@onready var health = $Health

func _ready() -> void:
	Console.add_command("eniHealth", printHealth)

func _physics_process(_delta: float) -> void:
	
	
	
	move_and_slide()

func printHealth():
	print(health.current)
