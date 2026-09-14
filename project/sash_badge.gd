extends CharacterBody2D
var scrollSpeed = 0
var MaxScrollSpeed = 100
var minScrollSpeed = 10
var deltaFactor = 50
var scrolling = false
var mouseStartPos
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("scroll"):
		scrolling = not scrolling
		if scrolling:
			mouseStartPos = get_global_mouse_position().y
	if scrolling:
		scrollSpeed = (mouseStartPos - get_global_mouse_position().y)*delta*deltaFactor
		if abs(scrollSpeed) < minScrollSpeed:
			scrollSpeed=0
	else:
		scrollSpeed = 0
	velocity.y = -scrollSpeed
	velocity.x = -velocity.y
	move_and_slide()
