extends Node

@onready var timer = Timer.new()

func _ready ():
	add_child(timer)
	timer.connect("timeout", self, "_on_timer_timeout")
	
func _on_body_entered(body):
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	queue_free()
	
func _on_body_exited(body: Node2D) -> void:
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	print("meow")
	get_tree().reload_current_scene()
