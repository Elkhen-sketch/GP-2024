extends Node2D

var x = 0
# for loop
func _ready():
	for i in range(1, 11):
		print(i)
		

func _draw() -> void:
	draw_circle(Vector2(x, x),x, Color.BLUE)
	pass

func _process(delta: float) -> void:
	x = x + 1
	queue_redraw()	

# Called when the node enters the scene tree for the first time.
