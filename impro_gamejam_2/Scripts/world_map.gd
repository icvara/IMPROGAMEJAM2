extends Control




func _ready() -> void:
	#Save.path = [0,10,11,20,21,30,21,4]
	if Save.current_path != 0:
		$Palyer.position = Save.player_position


func show_path():
	pass
	for c in Save.current_path:
		
		if Save.current_path == "0":
			$"Event1-1".show()
	



func _on_event_11_pressed() -> void:
	Save.current_path = "0"
	Save.player_position = $"Event1-1".position
	get_tree().change_scene_to_file("res://Scenes/combat.tscn")


func _on_event_21_pressed() -> void:
	pass # Replace with function body.


func _on_event_22_pressed() -> void:
	pass # Replace with function body.


func _on_event_31_pressed() -> void:
	pass # Replace with function body.


func _on_event_41_pressed() -> void:
	pass # Replace with function body.
