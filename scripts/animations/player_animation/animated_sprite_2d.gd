extends AnimatedSprite2D
class_name AnimatedPlayer

# Called when the node enters the scene tree for the first time.
const ANIMATIONS_PARENT_FOLDER = "res://Sunny Land Collection Files/Sunny Land Collection Files/Assets/Characters/sunny-bunny/Sprites/"
func _ready() -> void:
	position = Vector2(400, 60)
	
	
	var new_sprite_frames = SpriteFrames.new()

	Utils.load_animations_from_parent_folder(new_sprite_frames, ANIMATIONS_PARENT_FOLDER)
	
	sprite_frames = new_sprite_frames
	play("idle")

	
	
	#position = Vector2(50, 50)
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func play_idle() -> void:
	play("idle")
	
func play_run()  -> void:
	play("run")
	
func play_jump()  -> void:
	play("jump")


func _process(delta: float) -> void:
	pass
