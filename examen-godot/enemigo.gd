extends CharacterBody2D

const SPEED = 1
var velocidad_actual = SPEED

func _physics_process(delta: float) -> void:
	# Gravedad
	if not is_on_floor():
		velocity += get_gravity() * delta

	if $RayCastIzq2D.is_colliding():
		velocidad_actual = SPEED * 2
	
	elif not $RayCastIzq2D.is_colliding():
		velocidad_actual = SPEED
		
	velocity.x -= SPEED
	move_and_slide()
