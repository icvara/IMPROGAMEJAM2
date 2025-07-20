extends Control


func _on_dice_1_button_down() -> void:
	Save.dice2 = false
	Save.dice3 = false
	print(Save.dice1)
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")


func _on_dice_2_button_down() -> void:
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")


func _on_dice_3_button_down() -> void:
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")
