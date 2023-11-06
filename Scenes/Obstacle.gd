extends Node2D
class_name Obstacle

@export var speed : int = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translate(Vector2(speed * -1, 0))

func kill_player(body):
	get_tree().reload_current_scene()

func _on_rock_up_body_entered(body):
	kill_player(body)

func _on_rock_down_body_entered(body):
	kill_player(body)

func _on_player_check_body_exited(body):
	get_tree().call_group('Game', 'increment_score')

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _on_visible_on_screen_notifier_2d_screen_entered():
	get_tree().call_group('Obstacles', 'create_obstacle')
