extends AnimatedSprite

func _ready() -> void:
	frame = 0
	# warning-ignore:return_value_discarded
	connect("animation_finished", self, "_on_animation_finished")
	play("Animate")

func _on_animation_finished() -> void:
	queue_free()
