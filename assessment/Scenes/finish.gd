extends Sprite2D


func _on_body_entered(body: Node2D) -> void:
	emit_signal("win")
