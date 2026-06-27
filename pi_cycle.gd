extends CharacterBody2D

@export var speed: int = 400

func get_input():
	var input_dir = Input.get_axis("ui_up", "ui_down")
	velocity.y = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
