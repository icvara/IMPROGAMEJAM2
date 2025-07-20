extends Control


func _ready():
	Save.dice1 ={
	"0":randi_range(1, 4),
	"1":randi_range(1, 4),
	"2":randi_range(1, 4),
	"3":randi_range(4, 10),
}
	Save.dice2 ={
	"0":randi_range(1, 1),
	"1":randi_range(2, 2),
	"2":randi_range(3, 3),
	"3":randi_range(4, 4),
	"4":randi_range(5, 5),
	"5":randi_range(6, 6),
}
	Save.dice3 ={
	"0":randi_range(1, 2),
	"1":randi_range(1, 2),
	"2":randi_range(1, 4),
	"3":randi_range(1, 4),
	"4":randi_range(2, 6),
	"5":randi_range(2, 6),
	"6":randi_range(3, 8),
	"7":randi_range(3, 8),
}
	$BoxContainer/Dice1.text = "dice1 :
		"+str(Save.dice1.values())
	$BoxContainer/Dice2.text = "dice2 :
		"+str(Save.dice2.values())
	$BoxContainer/Dice3.text = "dice3 :
		"+str(Save.dice3.values())

func _on_dice_1_button_down() -> void:
	Save.dice2 = {}
	Save.dice3 = {}
	print(Save.dice1)
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")


func _on_dice_2_button_down() -> void:
	Save.dice1 = {}
	Save.dice3 = {}
	print(Save.dice2)
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")


func _on_dice_3_button_down() -> void:
	Save.dice1 = {}
	Save.dice2 = {}
	print(Save.dice3)
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")
