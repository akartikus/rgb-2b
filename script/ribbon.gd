extends Node2D

var WIDTH = 480

var list = ["R", "G", "B"]
var spawn1 : Node2D
var spawn2 : Node2D
var spawn3 : Node2D

func _ready():
	spawn1 = get_node("spawn1")
	spawn2 = get_node("spawn2")
	spawn3 = get_node("spawn3")
	
	var margin = WIDTH/6
	spawn1.set_position(Vector2(WIDTH/3 - margin, 650))
	spawn2.set_position(Vector2((WIDTH/3)*2 - margin, 650))
	spawn3.set_position(Vector2(WIDTH - margin, 650))

func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		var popped = list.pop_front()
		list.push_back(popped)
		update()
	elif Input.is_action_just_pressed("ui_right"):
		var popped = list.pop_back()
		list.push_front(popped)
		update()

func update():
	spawn1.get_node("Label").text = list[0]
	spawn2.get_node("Label").text = list[1]
	spawn3.get_node("Label").text = list[2]
