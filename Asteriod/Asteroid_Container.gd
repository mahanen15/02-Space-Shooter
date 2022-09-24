extends Node2D

onready var Asteriod = load ("res://Asteriod/Asteriod.tscn")
var positions = [Vector2(100,100), Vector2(800,100), Vector2(500,500), Vector2(800,500)]

func _physics_process(_delta):
	if get_child_count() < 2:
		var asteriod = Asteriod.instance()
		asteriod.position = positions[randi() % positions.size()]
		add_child(asteriod)
