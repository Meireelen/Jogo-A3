extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 200
var jump_force = -300

func _physics_process(delta):
	# Movimento horizontal
	var input = Vector2.ZERO
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = input.x * speed

	# Gravidade e pulo
	velocity.y += 10
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = jump_force

	velocity = move_and_slide(velocity)

func _on_Player_body_entered(body):
	if body.name == "Pedra":
		get_tree().reload_current_scene()
