extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var i = 10
	while i >= 1:
		print(i)
		i=1
		
func _draw() -> void:
	draw_circle(Vector2(x, x),x, Color.RED)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
