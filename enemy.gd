extends Area3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node3D) -> void:
	Global.health -= Global.DAMAGE
	print(Global.health)
		
	set_collision_layer_value(4, true)
	set_collision_mask_value(1, true)
	
	queue_free()
