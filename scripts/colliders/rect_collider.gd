extends CollisionShape2D
class_name CollisionRectengle


static func create_instance(rect_size: Vector2) -> CollisionRectengle:
	var instance = CollisionRectengle.new()
	var rec_shape = RectangleShape2D.new()
	rec_shape.size = rect_size
	instance.shape = rec_shape
	return instance


func _ready() -> void:
	pass
