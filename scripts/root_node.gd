extends Node2D


# Called when the node enters the scene tree for the first time.



func _ready() -> void:
	print("jHASGJHAGS")
	var custom_play_button = PlayButton.new()
	var new_quit_button =QuitButton.new()
	add_child(new_quit_button)
	add_child(custom_play_button)
	new_quit_button.pressed.connect(_on_c_quit_pressed)
	custom_play_button.pressed.connect(_on_costum_pressed)
	

func _on_costum_pressed() -> void:
	print("pressed cutom")
	var new_world = World_Class.new()
	chnage_scene_to_node(new_world)
	

func _on_c_quit_pressed() -> void:
	print("pressed quit")
	get_tree().quit()
	
	
func _on_play_c_pressed() -> void:
	print("pressed play")
	var new_world = World_Class.new()
	chnage_scene_to_node(new_world)



func chnage_scene_to_node(node) -> void:
	var tree = get_tree()
	var current_scene = tree.current_scene
	if current_scene:
		current_scene.queue_free()
	tree.root.add_child(node)
	tree.current_scene = node
	
	
