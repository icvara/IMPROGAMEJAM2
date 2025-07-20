extends Node2D


func _ready() -> void:
	$dice_list.text = "your dices are ...."
	




#if Save.current_path = 0


func _on_button_pressed() -> void:
	#Save.current_path = "0"
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")
