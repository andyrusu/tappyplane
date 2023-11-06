extends Node2D

var score : int = 0
@onready var score_label : Label = $UI/Score/ScoreValue

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true

func increment_score(): 
	score += 1
	score_label.text = str(score)
