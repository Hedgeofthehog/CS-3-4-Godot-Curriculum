extends npc

@onready var sprite: Sprite2D = $Sprite2D
@export var damage_amount: int=10




func _ready() -> void:
	super._ready()
	
	

func _physics_process(delta: float) -> void:
	super._physics_process(delta)
	
		


func _on_detection_radius_body_entered(body: Node2D) -> void:
	super._on_detection_radius_body_entered(body) 
	if body is Player:
		is_hostile = true
		speed = 20 
		# 

	print("test")
	if body == Player:
		print("NOT THE SLIMES!" + str(damage_amount) + " damage");
	# Replace with function body.


func _on_detection_radius_body_exited(body: Node2D) -> void:
	super._on_detection_radius_body_exited(body)
	if body is Player:
		is_hostile = false
		speed = 100


func _on_area_2d_body_entered

(body: Node2D) -> void:
	if body is Player:
		player.change_health(-2)
