extends Area2D

@onready var timer = $Timer

#this is the detection system to find out when the player touches the coin. meow
func _on_body_entered(body):
	#this is the part that changes the players size
		if body.has_method('add_powerup'):
			body.add_powerup()
			queue_free()
			
		
		
	
	
