extends Node
@onready var score_label: Label = $ScoreLabel
var score = 0

# this is very simple and is only for the scoring 
func add_point(): 
	score += 1
	score_label.text = "You Collected " + str(score) + " Coins"
