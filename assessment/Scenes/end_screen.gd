extends CanvasLayer

@onready var timer: Timer = $Timer
@onready var title = $PanelContainer/MarginContainer/Rows/Title
var win = false

func _on_state_changed():
	print("dead")

func _ready():
	var primary = get_node()


func set_title():
	if win:
		title.text = "You Win :)"
	else:
		title.text = "You Lose :("


func _on_timer_timeout():
	get_tree().change.scene("res://Scenes/game.tscn")
