extends ActorBaseClass


#func _physics_process(delta: float) -> void:
	#for platformgame
	#if key is pushed will return value of 1px as defualt, so movement is +1.0 or0.1 depending on what action is being used.
	#ensuring every func and var is being passed and proccesed.
	#velocity = calculate_move_velocity(velocity, direction, speed)
	#velocity = calculate_move_velocity(velocity, directionX, speed)
	#think of the amount of px moving in one frame
	#velocity = move_and_slide(velocity, FLOOR_NORMAL)


#for platform games
#func get_direction () -> Vector2:
	#return Vector2(
	#Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
	#-1.0 if Input.is_action_just_pressed("move_jump") and is_on_floor() else 1.0 # -1.0<---0--->+1 ,turney operator for jumping -1, or +1
	#)


#for 2d platformers
#func calculate_move_velocity(
#	linear_velocity: Vector2,
#	direction: Vector2,
#	speed: Vector2# passing every known variable within the function to avoide creating bugs 
#	) -> Vector2:
#	var new_velocity: = linear_velocity
#	new_velocity.x = (speed.x * direction.x)
#	new_velocity.y += (gravityX * get_physics_process_delta_time()) # adding the left to the formula to the right,and we dont have to call a new var we can use the delta func which is the ...delta_time()
#	if direction.y ==-1.0:
#		new_velocity.y = (speed.y * direction.y)
#	return new_velocity

#RPG
const ACCELERATION =25
const MAX_SPEED = 200
const FRICTION = 25

func _physics_process(delta):
	calculate_move_velocity(delta)



func calculate_move_velocity(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	if input_vector != Vector2.ZERO:
		velocity += (input_vector * ACCELERATION) * (delta)
		velocity = velocity.clamped(MAX_SPEED * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		
	print(velocity)
	move_and_collide(velocity)



