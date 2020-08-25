extends ActorBaseClass

func _physics_process(delta): 
	calculate_move_velocity(delta)

func calculate_move_velocity(delta):
	var speed = 2
	var velocity = position.direction_to(get_node("../player/").get_position()) * speed
	move_and_collide(velocity)
	print("villian position: " + str(get_position()))
	print("villian velocity: " + str(velocity))
