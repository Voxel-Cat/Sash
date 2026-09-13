extends CharacterBody2D
var speed= 100
var deltaFactor = 50


func _process(delta: float) -> void:
	velocity = Vector2.ZERO
	var normalizedSpeed = speed*delta*deltaFactor/1.41421356
	if Input.is_action_pressed("down"):
		velocity.y += speed*delta*deltaFactor
	elif Input.is_action_pressed("up"):
		velocity.y -= speed*delta*deltaFactor
	if Input.is_action_pressed("right"):
		velocity.x += speed*delta*deltaFactor
	elif Input.is_action_pressed("left"):
		velocity.x -= speed*delta*deltaFactor
	if velocity.x > 0 and velocity.y > 0:
		velocity.x = normalizedSpeed
		velocity.y = normalizedSpeed
	elif velocity.x > 0 and velocity.y < 0:
		velocity.x = normalizedSpeed
		velocity.y = -normalizedSpeed
	elif velocity.x < 0 and velocity.y > 0:
		velocity.x = -normalizedSpeed
		velocity.y = normalizedSpeed
	elif velocity.x < 0 and velocity.y < 0:
		velocity.x = -normalizedSpeed
		velocity.y = -normalizedSpeed
	move_and_slide()
	
