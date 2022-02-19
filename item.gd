extends Area2D


var selected = false
export var id = 0


func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("left_click") and !selected:
		selected = true
	elif Input.is_action_just_pressed("left_click") and selected:
		selected = false



func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 60*delta)


