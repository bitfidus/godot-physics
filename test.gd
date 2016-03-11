
extends Node2D

var coso = preload("res://poly.xml")

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	rand_seed(0)
	pass


func _on_Timer_timeout():
	var c = coso.instance()
	c.set_pos(Vector2(354 + randi() % 5, 38 + randi() % 5))
	c.set_rot(randi() % 360)
	c.get_node("Polygon2D").set_color(Color(randf(), randf(), randf()))
	get_parent().add_child(c)
