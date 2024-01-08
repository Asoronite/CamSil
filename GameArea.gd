extends Node2D
var originalNode = preload("res://Dirt.tscn")


func _ready():
	#for i in range (23):
	#	for iy in range (13):
	#		var new_node = originalNode.instantiate()
	#		add_child(new_node)
	#		new_node.global_position.x = i * 50 + 25
	#		new_node.global_position.y = iy * 50 + 25
			
	for i in range (150):
		var new_node = originalNode.instantiate()
		var randomSize = randi_range(0,3)
		new_node.scale = Vector2(randomSize,randomSize)
		add_child(new_node)

		var randomPosX = randi_range(0,1000)
		var randomPosY = randi_range(0,600)
		new_node.global_position = Vector2(randomPosX,randomPosY) + Vector2(30,30)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
