extends Node

var VP = Vector2.ZERO
var score = 0
var lives = 5

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	randomize()
	VP = get_viewport().size
	var _signal = get_tree().get_root().connect("size_changed" , self, "_resize")

func _unhandled_input(_event):
	if Input.is_action_pressed("quit"):
		get_tree().quit()

func _resize():
	VP + get_viewport().size
	
func update_score(s):
	score += s
	var score = get_node_or_null("/root/Game/UI/HUD/Score")
	if score != null:
		score.text = "score: " + str(score)

func update_lives(l):
	lives += l
	var lives = get_node_or_null("/root/Game/UI/HUD/Score")
	if lives != null:
		lives.text = "lives: " + str(lives)

