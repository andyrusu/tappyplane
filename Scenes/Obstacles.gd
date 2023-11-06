extends Node

@export var spawn_position : Vector2 = Vector2(1235, 1)
@export var obstacle_types : Array[PackedScene]

# Called when the node enters the scene tree for the first time.
func _ready():
	create_obstacle()

func create_obstacle():
	var obstacle : Node2D = obstacle_types.pick_random().instantiate()
	obstacle.position = spawn_position
	add_child(obstacle)

func _on_floor_body_entered(body):
	get_tree().reload_current_scene()
