extends Node2D

func _draw() -> void:
	var l = $num_lines.value
	for i in range(l):
		draw_line(Vector2(i * 100,0), Vector2(i * 100, 500), Color.BEIGE, 10)
		
		
		pass
		
func _process(delta: float) -> void:
	queue_redraw()
