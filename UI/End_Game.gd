extends Control


func _ready():
	$label.text ="Thanks for Playing! Your score was " + str(Global.score) + "."

func _on_Play_pressed():
	var _scene = get_tree().change_scene("res://Game.tscn")
