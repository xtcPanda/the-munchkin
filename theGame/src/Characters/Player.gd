extends Character

func _physics_process(delta: float) -> void:
	var direction: = get_direction()
	velocity = calculate_move_velocity(velocity,direction,speed)
	velocity = move_and_slide(velocity, FLOOR_NORMAL)

func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-Input.get_action_strength("jump") if is_on_floor() and Input.is_action_just_pressed("jump") else 0.0
	)

func calculate_move_velocity(
	linear_velocity: Vector2,
	speed: Vector2,
	direction: Vector2
):
	var new_velocity: = linear_velocity
	new_velocity.x = speed.x * direction.x
	new_velocity.y += gravity * get_physics_process_delta_time()
	if direction.y == 0.0:
		new_velocity.y = speed.y * direction.y
	return new_velocity
