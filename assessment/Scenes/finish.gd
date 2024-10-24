extends Node

@onready var timer: Timer = $Timer

	
func _on_body_entered(body):
	get_tree().change_scene_to_file("res://Scenes/EndScreen.tscn")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
