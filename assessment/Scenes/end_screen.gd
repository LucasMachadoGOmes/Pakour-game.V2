extends CanvasLayer

@onready var timer: Timer = $Timer




func _on_timer_timeout():
	get_tree().change.scene("res://Scenes/game.tscn")
