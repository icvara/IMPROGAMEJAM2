extends Control
var monster_turn= false


func _ready():
	var random_numbers = [1,1,1,1,1,3]
	var random_index =randi_range(0, random_numbers.size()-1)
	var random = random_numbers[random_index]
	reward_generation(Save.dice4,random,$BoxContainer2/Reward1)
	reward_generation(Save.dice5,random,$BoxContainer2/Reward2)
	reward_generation(Save.dice6,random,$BoxContainer2/Reward3)
	DiceButtonText(Save.dice1,$BoxContainer/Dice1)
	DiceButtonText(Save.dice2,$BoxContainer/Dice2)
	DiceButtonText(Save.dice3,$BoxContainer/Dice3)
	DiceButtonText(Save.dice4,$BoxContainer/Dice4)
	DiceButtonText(Save.dice5,$BoxContainer/Dice5)
	DiceButtonText(Save.dice6,$BoxContainer/Dice6)
	DiceButtonText(Save.dice7,$BoxContainer/Dice7)
	DiceButtonText(Save.dice8,$BoxContainer/Dice8)
	DiceButtonText(Save.dice9,$BoxContainer/Dice9)
	DiceButtonText(Save.dice10,$BoxContainer/Dice10)
	DiceButtonText(Save.dice11,$BoxContainer/Dice11)
	DiceButtonText(Save.dice12,$BoxContainer/Dice12)
	DiceButtonText(Save.dice13,$BoxContainer/Dice13)
	DiceButtonText(Save.dice14,$BoxContainer/Dice14)
	DiceButtonText(Save.dice15,$BoxContainer/Dice15)
	DiceButtonText(Save.dice16,$BoxContainer/Dice16)
	dice_check($BoxContainer/Dice1)
	dice_check($BoxContainer/Dice2)
	dice_check($BoxContainer/Dice3)
	dice_check($BoxContainer/Dice4)
	dice_check($BoxContainer/Dice5)
	dice_check($BoxContainer/Dice6)
	dice_check($BoxContainer/Dice7)
	dice_check($BoxContainer/Dice8)
	dice_check($BoxContainer/Dice9)
	dice_check($BoxContainer/Dice10)
	dice_check($BoxContainer/Dice11)
	dice_check($BoxContainer/Dice12)
	dice_check($BoxContainer/Dice13)
	dice_check($BoxContainer/Dice14)
	dice_check($BoxContainer/Dice15)
	dice_check($BoxContainer/Dice16)
	
	
	$EnemyHP.max_value = $Monster1.HP
	$PlayerHP.max_value = Save.MaxHealth
	
	$Palyer.get_node("AnimatedSprite2D").play("stop")
	$Monster1.get_node("AnimatedSprite2D").play("default")


func DiceButtonText (Dicename,BoxButtonNumber):
	var dicesizevalue = Dicename.size()
	#var random_element = randi_range(1,dicesizevalue)
	#var rng_effect = Dicename [str(random_element)]
	BoxButtonNumber.text = str(Dicename.values())

func dice_check(dicelabel):
	if dicelabel.text == "[]":
		dicelabel.hide()

func reward_generation(Dicename,Quality,RewardButton):
	var random_numbers = [1,1,1,1,1,3]
	var random_index =randi_range(0, random_numbers.size()-1)
	var random = random_numbers[random_index]
	Dicename = {}
	for i in randi_range(4,12):
		Dicename[i] = randi_range(1,4+Quality)
	print(str(Dicename.values()))
	RewardButton.text = (str(Dicename.values()))
	


func _on_dice_1_button_down() -> void:
	DiceButtonPressed(Save.dice1)


func _on_dice_2_button_down() -> void:
	DiceButtonPressed(Save.dice2)


func _on_dice_3_button_down() -> void:
	DiceButtonPressed(Save.dice3)


func _on_dice_4_button_down() -> void:
	DiceButtonPressed(Save.dice4)


func _on_dice_5_button_down() -> void:
	DiceButtonPressed(Save.dice5)


func _on_dice_6_button_down() -> void:
	DiceButtonPressed(Save.dice6)


func _on_dice_7_button_down() -> void:
	DiceButtonPressed(Save.dice7)


func _on_dice_8_button_down() -> void:
	DiceButtonPressed(Save.dice8)


func _on_dice_9_button_down() -> void:
	DiceButtonPressed(Save.dice9)


func _on_dice_10_button_down() -> void:
	DiceButtonPressed(Save.dice10)


func _on_dice_11_button_down() -> void:
	DiceButtonPressed(Save.dice11)


func _on_dice_12_button_down() -> void:
	DiceButtonPressed(Save.dice12)


func _on_dice_13_button_down() -> void:
	DiceButtonPressed(Save.dice13)

func _on_dice_14_button_down() -> void:
	DiceButtonPressed(Save.dice14)

func _on_dice_15_button_down() -> void:
	DiceButtonPressed(Save.dice15)


func _on_dice_16_button_down() -> void:
	DiceButtonPressed(Save.dice16)
	
func DiceButtonPressed (Dicename):
	var dicesizevalue = Dicename.size()
	var random_element = randi_range(1,dicesizevalue)
	var rng_effect = Dicename [str(random_element)]
	$Monster1.HP -= rng_effect
	$Dice_roll.get_node("AnimatedSprite2D").play("roll")
	$dice_result.text = str(rng_effect)
	$BoxContainer.hide()
	monster_turn= true
	$Monster1.attack($Palyer)
	await get_tree().create_timer(1).timeout
	monster_turn= false
	$BoxContainer.show()
	#$BoxContainer/Dice_result.text = str(rng_effect)


func _process(delta: float) -> void:
	$EnemyHP.value = $Monster1.HP 
	$PlayerHP.value = Save.Health 
	$hp_monster_value.text = str($Monster1.HP )
	$hp_player_value.text = str(Save.Health)
	if $Monster1.HP  <= 0:
		Win()


func Win():
	pass
	$Panel.show()
	$BoxContainer2.show()
	#get_tree().change_scene_to_file("res://Scenes/world_map.tscn")

func _on_reward_1_button_down() -> void:
	var random_numbers = [1,1,1,1,1,3]
	var random_index =randi_range(0, random_numbers.size()-1)
	var random = random_numbers[random_index]
	reward_generation(Save.dice4,random,$BoxContainer2/Reward1)
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")


func _on_reward_2_button_down() -> void:
	var random_numbers = [1,1,1,1,1,3]
	var random_index =randi_range(0, random_numbers.size()-1)
	var random = random_numbers[random_index]
	reward_generation(Save.dice5,random,$BoxContainer2/Reward2)
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")


func _on_reward_3_button_down() -> void:
	var random_numbers = [1,1,1,1,1,3]
	var random_index =randi_range(0, random_numbers.size()-1)
	var random = random_numbers[random_index]
	reward_generation(Save.dice6,random,$BoxContainer2/Reward3)
	get_tree().change_scene_to_file("res://Scenes/world_map.tscn")
