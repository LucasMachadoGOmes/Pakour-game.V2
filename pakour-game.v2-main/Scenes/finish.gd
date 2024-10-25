extends Node

var original_scene_path = "res://Scenes/game.tscn"


func _on_body_entered(body):
	if body is Node2D:
		Engine.time_scale = 0.5
		call_deferred("remove_body", body)


func remove_body(body: Node2D):
	if body is Node2D:
		if body.has_node("CollisionShape2D"): 
			body.get_node("CollisionShape2D").call_deferred("queue_free") 
		body.call_deferred("queue_free")

	
func _on_body_exited(body: Node2D) -> void:
	if body is Node2D: 
		print("Body exited:", body.name)  
		get_tree().change_scene_to_file("res://Scenes/EndScreen.tscn") 
	

func _on_button_pressed() -> void:
	Engine.time_scale = 1
	print("Timer timeout. Resetting time scale to 1 and reloading the game scene.")
	get_tree().change_scene_to_file(original_scene_path)
