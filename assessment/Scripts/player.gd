extends CharacterBody2D


var SPEED = 130.0
var JUMP_VELOCITY = -350.0
@onready var timer = $Timer

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	
	if direction > 0: 
		animated_sprite.flip_h = false
	elif direction < 0: 
		animated_sprite.flip_h = true 
	
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("normal")
		else:
			animated_sprite.play("Run")
	else: 
		animated_sprite.play("Jump")
	
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

#this is how the powerup interacts with the player. 
#It will call this function when it interacts with the player and this will change the players size
func add_powerup():
	self.scale = Vector2(0.5, 0.5)
	SPEED = 200.0
	JUMP_VELOCITY = -400.0
	timer.start()

func _on_timer_timeout():
	self.scale = Vector2 (1, 1)
	SPEED = 130.0
	JUMP_VELOCITY = -350.0
	
