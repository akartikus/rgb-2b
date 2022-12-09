extends Area2D

class_name Dot

@export var modulate_color:Color
var sprite: Sprite2D

func _ready():
	sprite = get_node("Sprite2D")
	sprite.modulate = modulate_color

func _process(delta):
	pass


func change_color(color: Color):
	modulate_color = color
	sprite.modulate = modulate_color
