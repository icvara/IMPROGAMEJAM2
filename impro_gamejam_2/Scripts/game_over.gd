extends Control


func _on_button_pressed() -> void:
	Save.init()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
