# player.gd
extends CharacterBody2D

class_name Player_class

#These are the properties/attributes of player 
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const STARTING_POSITON = Vector2(0,0)
var animated_player: AnimatedPlayer
var player_camera: CustomCamera
var collision_shape_1: CollisionRectengle

func _ready() -> void:
	
	print("hsagdjhasgd")
	animated_player = AnimatedPlayer.new()
	player_camera = CustomCamera.new()
	add_child(player_camera)
	add_child(animated_player)
	 # Create and configure CapsuleShape2D
	
	
	collision_shape_1 = CollisionRectengle.create_instance(Vector2(20,20))
	add_child(collision_shape_1)
	position = STARTING_POSITON
	for child in get_children():
		print("in childrens")
		if child is AnimatedSprite2D :
			print("else", child.position)
			print(child.position)
			
		child.position = position

func _physics_process(delta: float) -> void:
	
	
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		animated_player.play_run()
	else:
		animated_player.play_idle()
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
