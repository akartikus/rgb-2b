extends RigidBody2D

class_name Ball

var speed : int = 25
var modulate_color: Color

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if speed > 0:
		linear_velocity  = Vector2.DOWN * speed * delta * 500

func init_ball(speed: int, modulate_color: Color):
	self.speed = speed;
	self.modulate_color = modulate_color

func get_modulate_color():
	return modulate_color
