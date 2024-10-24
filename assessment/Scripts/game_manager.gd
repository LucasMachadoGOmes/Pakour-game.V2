extends Node
@onready var score_label: Label = $ScoreLabel
const Game = preload("res://Scenes/game.tscn")
const End = preload("res://Scenes/EndScreen.tscn")
var score = 0

func add_point(): 
	score += 1
	score_label.text = "You Collected " + str(score) + " Coins"
