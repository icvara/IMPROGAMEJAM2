extends Button

@export var new_path = "000"

var need_to_show = true

func show_choice():
	var i = 0
	for c in Save.current_path:
		if new_path.substr(i,1) != "X":
				if new_path.substr(i,1)!=c:
					return false
		i = i + 1

					
			


func _ready() -> void:
	text = new_path
	if Save.current_path.length() + 1 == new_path.length():
		show()
	else:
		hide()
	
	if show_choice() == false:
		hide()

func _on_pressed() -> void:
	Save.current_path = new_path
	Save.player_position = position
	if new_path == "0X00":
		get_tree().change_scene_to_file("res://Scenes/fightfinal_scene.tscn")

	else:
		get_tree().change_scene_to_file("res://Scenes/fight_scene.tscn")
