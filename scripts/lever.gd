extends Area2D

@onready var player = %Player
@onready var door = $"../Door"
@export var clicked = false

func play_animation(reverse: bool = false) -> void:
	var speed: int
	if reverse:
		speed = -1
	else:
		speed = 1
	$AnimatedSprite2D.play("", speed, reverse)




func _on_body_entered(body: Node2D) -> void:
	if body == player:
		if clicked == false:
			play_animation()
			clicked = true
			door.set_is_open(false)
		else:
			play_animation(true)
			clicked = false
			door.set_is_open(true)
