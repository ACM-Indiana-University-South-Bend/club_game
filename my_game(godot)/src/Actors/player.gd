extends ActorBaseClass

const ACCELERATION =25
const FRICTION = 25

func _physics_process(delta): 
	calculate_move_velocity(delta)

func calculate_move_velocity(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	if input_vector != Vector2.ZERO:
		velocity += (input_vector * ACCELERATION) * (delta)
		velocity = velocity.clamped(speed * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	print("player position: " + str(get_position()))
	print("player velocity: " + str(velocity))
	move_and_collide(velocity)
