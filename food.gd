extends Area3D


const ROTATION_SPEED = 2 # Number of degrees the food rotates every frame


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_y(deg_to_rad(ROTATION_SPEED))
		

func _on_body_entered(body: Node3D) -> void:
	print(Global.health)
	if Global.health < 100:
		Global.health = min(Global.health + 10, 100)
	print(Global.health)
		
	set_collision_layer_value(3, false)
	set_collision_mask_value(1, false)
	queue_free()
