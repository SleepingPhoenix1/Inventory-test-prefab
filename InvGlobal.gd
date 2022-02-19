extends Node


var Inventory = [[0,0],[0,0],0,0]



func add_item(slot, item, ammount):
	Inventory[slot] = [item, Inventory[slot][1] + ammount]

func remove_item(slot, item, ammount):
	if Inventory[slot][1] > 1:
		Inventory[slot] = [item, Inventory[slot][1]- 1]
		
	elif Inventory[slot][1] == 1:
		Inventory[slot] = [0,0]
		


func _process(delta):
	print(Inventory[0])
	if Input.is_action_just_pressed("ui_up"):
		add_item(0, "apple", 3)
	elif Input.is_action_just_pressed("ui_down"):
		remove_item(0, "apple", 1)
