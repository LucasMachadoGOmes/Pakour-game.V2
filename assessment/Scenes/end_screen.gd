extends CanvasLayer

@onready var timer: Timer = $Timer
@onready var title = $PanelContainer/MarginContainer/Rows/Title
var win = false

func on_state_change():
	print("dead")

func _ready():
	var primary = get_node("Killzone")
	primary.dead.connect(on_state_change)

func _on_timer_timeout():
	get_tree().change.scene("res://Scenes/game.tscn")
