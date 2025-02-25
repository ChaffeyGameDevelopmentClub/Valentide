extends Node3D

@onready var collision = $Hand/HitBox3D/CollisionShape3D
@onready var ani = $Animation/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func swingAni():
	#print("enable")
	collision.disabled = false
	#print(collision.disabled)
	ani.play("swing")
	$SwingTimer.start()
	
	


func _on_swing_timer_timeout() -> void:
	#print("disable")
	collision.disabled = true
	#print(collision.disabled)
