extends Node2D

# Background Road

@onready var bg_texture = $TextureRect

var start_x

func _ready() -> void:
	start_x = bg_texture.position.x

func scroll_left():
	bg_texture.position.x -=1
	
	if bg_texture.position.x <= start_x - 512:
		bg_texture.position.x = start_x

func _process(delta):
	scroll_left()
