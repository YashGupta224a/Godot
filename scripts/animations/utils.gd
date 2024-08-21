extends Node

class_name Utils
static func load_animations_from_parent_folder(sprite_frames: SpriteFrames, parent_folder_path: String) -> void:
	var dir = DirAccess.open(parent_folder_path)
	
	if dir:
		dir.list_dir_begin()
		var folder_name = dir.get_next()
		
		while folder_name != "":
			if dir.current_is_dir() and folder_name != "." and folder_name != "..":
				var folder_path = parent_folder_path + folder_name + "/"
				load_images_from_folder(sprite_frames, folder_name, folder_path)
			folder_name = dir.get_next()
		dir.list_dir_end()
	else:
		print("Failed to open parent directory: %s" % parent_folder_path)


static func load_images_from_folder(sprite_frames: SpriteFrames, animation_name: String, folder_path: String) -> void:
	var dir =  DirAccess.open(folder_path)
	if dir:
		sprite_frames.add_animation(animation_name)
		
		dir.list_dir_begin()
		var file_name = dir.get_next()
		
		while file_name != "":
			if file_name.ends_with(".png"):
				var file_path = folder_path + file_name
				var texture = load(file_path)
				sprite_frames.add_frame(animation_name, texture)
			file_name = dir.get_next()
		dir.list_dir_end()
	else:
		print("Failed to open directory: %s" % folder_path)
