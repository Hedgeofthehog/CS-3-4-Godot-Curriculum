extends AnimatableBody2D


func set_is_open(is_open: bool) -> void:
	if is_open:
		$AnimatedSprite2D.frame = 0
		collision_layer = 1
		$LightOccluder2D.visible = false
	else:
		$AnimatedSprite2D.frame = 1
		collision_layer = 0
		$LightOccluder2D.visible = true


#func _on_detection_radius_body_entered(body: Node2D) -> void:
	#super._on_detection_radius_body_entered(body) 
	#if body is Player:
		
		
		
#func _on_detection_radius_body_entered(body: Node2D) -> void:
	#super._on_detection_radius_body_entered(body) 
	#if body is Player:
		
