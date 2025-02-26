class_name InventoryGame extends Node

@export var database : InventoryDatabase

var main_inventory : Inventory

func _ready():
	$"UI/Inventory System UI".setup($"../Player/CharacterInventorySystem")
	main_inventory = $"../Player/CharacterInventorySystem".main_inventory
	
#
func _process(_delta):
	pass
