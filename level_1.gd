extends Node3D

@onready var player = $Lucas

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	# Passa a posição do jogador para todos os inimigos
	get_tree().call_group("enemies", "update_target_position", player.global_transform.origin)
