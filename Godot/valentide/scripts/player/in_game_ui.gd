extends Control

#region Exports group Nodes

@export_group("Nodes")
@export var player : CharacterBody3D
@export var HealthNode : Health
@export var HurtBox : HurtBox3D

#endregion

#region Vars 

class Box extends Node:
	var amountLabel : Label
	var boxName : Label

var healthBox = Box.new()

#endregion

#region Main Process
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#init health box
	healthBox.amountLabel = $PanelContainer/MarginContainer/HBoxContainer/Health/VBoxContainer/AmountLabel

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	updateHealth()

#endregion

#region Apply Health
func updateHealth():
	healthBox.amountLabel.text = str(HealthNode.current) + "%"
	#HealthNode.current
	pass

#endregion
