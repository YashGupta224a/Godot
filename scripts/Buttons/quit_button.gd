extends GameButtons
class_name QuitButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(600, 200)
	size = Vector2(100, 100)
	text = "new quit button"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass






