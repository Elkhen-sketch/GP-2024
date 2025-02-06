extends Node2D

var radius:float
var count:int

func _draw() -> void:
	var l = $num_lines.value
	#for i in range(l):
		#draw_line(Vector2(i * 100,0), Vector2(i * 100, 500), Color.BEIGE, 10)
	
	
	var theta_inc = 1
	var px=0
	var py=0
	var r=0
	var a=1
	for i in range(l):
		var theta = theta_inc * i
		var x = sin(theta) * radius
		var y = cos(theta) * radius
		var c:Color = Color.from_hsv(.5, 1, 1, a)
		draw_line(Vector2(px, py), Vector2(x, y), c, 10)
		px=x
		py=y
		a=a - 0.01
		r=r+10
		
		pass
		
func _process(delta: float) -> void:
	queue_redraw()
	
func _on_num_lines_value_changed(value: float) -> void:
	count = value
	pass 
	
func _on_radius_value_changed(value: float) -> void:
	radius = value
	pass
	
