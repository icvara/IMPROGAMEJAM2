extends Control



func _ready():
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

func DiceButtonText (Dicename,BoxButtonNumber):
	var dicesizevalue = Dicename.size()
	#var random_element = randi_range(1,dicesizevalue)
	#var rng_effect = Dicename [str(random_element)]
	BoxButtonNumber.text = str(Dicename.values())

func dice_check(dicelabel):
	if dicelabel.text == "[]":
		dicelabel.hide()


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
	$BoxContainer/Dice_result.text = str(rng_effect)
