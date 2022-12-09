extends Node2D

const WIDTH = 480

var colors = [Color(1,0,0), Color(0,1,0), Color(0,0,1)]
var spawns = []

func _ready():
	spawns.append(get_node("spawn1"))
	spawns.append(get_node("spawn2"))
	spawns.append(get_node("spawn3"))
			
	init_spwans()

func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		var popped = colors.pop_front()
		colors.push_back(popped)
		update()
	elif Input.is_action_just_pressed("ui_right"):
		var popped = colors.pop_back()
		colors.push_front(popped)
		update()

func update():
	for i in range(spawns.size()):
		spawns[i].get_node("dot").change_color(colors[i])
		
func init_spwans():
	var margin = WIDTH/6
	for i in range(spawns.size()):
		spawns[i].set_position(Vector2((WIDTH/3) * (i + 1) - margin, 650))

