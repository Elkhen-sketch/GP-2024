extends Sprite2D

@export var  time = 5
@export var  speed = 10
@onready var Player = $"../Player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var a:float = 10.0 / 17.0
	var b:float 
	b = a * 17.0
	print(b)
	pass # Replace with function body.
	
	# Called every frame. 'delta' is the elapsed time since the previous
func _process(delta: float) -> void:
	
	var to_Player:Vector2 = Player.global_position - global_position
	
	
	DebugDraw2D.set_text("Dist to Player", to_Player.length())
	
	to_Player = to_Player.normalized()
	
	DebugDraw2D.set_text("Normalized to Player", to_Player.length())

	global_position = global_position + to_Player * speed * delta


	pass
		
	
