extends CharacterBody2D

var direction_x := 0.0
@export var speed = 500


func get_input():
	direction_x = Input.get_axis("P1 left","P1 right")
	print(direction_x)
	
	if Input.is_action_just_pressed("P1 jump") and is_on_floor():
		velocity.y = -2500
	if Input.is_action_just_pressed("P1 shoot"):
		print("shoot")
	
func apply_gravity():
	velocity.y += 100
func _process(delta):
	get_input()
	apply_gravity()
	
	
	
	velocity.x = direction_x * speed
	move_and_slide()
