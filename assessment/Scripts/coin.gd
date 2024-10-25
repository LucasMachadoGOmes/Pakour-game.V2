extends Area2D
@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# making collision and showing what happens once the collision has occured. 

func _on_body_entered(_body):
	game_manager.add_point()
	animation_player.play("pickup")
