extends Node2D

var selected = false
var mouse_offset = Vector2(0,0)




func followMouse():
	position = get_global_mouse_position() + mouse_offset



func _process(delta):
	if selected:
		followMouse()
	else :
		pass
		#position = Vector2(0,0)


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT :
		if event.pressed:
			selected = true
			mouse_offset = position - get_global_mouse_position()
		else :
			selected = false




func _on_area_2d_area_entered(area):
	if area.name == "DirtArea":
		area.scale = Vector2(0,0)
		print("entered")
