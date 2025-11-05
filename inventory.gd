extends Node
var my_inventory:Array[Resource]
var current_item=0
var carry_capacity=30
var current_weight

func print_specific_inventory(index):
	print(str(my_inventory[current_item].type))
	print(str(my_inventory[current_item].quantity))
	print(str(my_inventory[current_item].cost))
	
func add_to_inventory(inventory_item):
	if current_weight+my_inventory[current_item].weight>carry_capacity:
		pass

func _process(delta):
	if Input.is_action_pressed("inventory"):
		print_specific_inventory(0)
