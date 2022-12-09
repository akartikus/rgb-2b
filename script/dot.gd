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

func earn_point():
	#TODO Update score add some animation add delete
	print("Earn point")
	pass
	
func lose_hp():
	#TODO Update score add some animation add delete
	print("Lose HP")
	pass

func _on_body_entered(ball):
	var ball_color = ball.get_modulate_color()
	if(ball_color == modulate_color):
		earn_point()
	
	else:
		lose_hp()
		
	
