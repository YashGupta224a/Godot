extends Node2D
class_name World_Class

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	
	#
	var player = Player_class.new()
	add_child(player)
	player.position =  Vector2(450, 100)
	#
	# Create the StaticBody2D node
	var static_body = StaticBody2D.new()
	
	
	# Create a CollisionShape2D for the StaticBody2D
	var collision_shape = CollisionShape2D.new()
	
	var shape = RectangleShape2D.new()
	shape.size = Vector2(1000, 50)  # Set size of the rectangle shape
	collision_shape.shape = shape
	collision_shape.position =  Vector2(600, 400) 
	
	# Add the CollisionShape2D to the StaticBody2D
	static_body.add_child(collision_shape)
	# Create and configure the ColorRect for visualization
	var color_rect = ColorRect.new()
	 # Semi-transparent red color
	color_rect.size = shape.size
	color_rect.color = Color(1, 1, 0, 0.5) 
   # Match size of the RectangleShape2D
	color_rect.position = - (color_rect.size / 2)   # Position to match the center of the CollisionShape2D
	
	# Add ColorRect to the scene
	collision_shape.add_child(color_rect)
	# Add the StaticBody2D to the current scene node
	add_child(static_body)
	
	
	
	
	# Optionally, you can set properties or modify the instance
	# Example: scene_instance.position = Vector2(200, 200)
	
	
