extends Control




func _ready() -> void:
	#Save.path = [0,10,11,20,21,30,21,4]
	if Save.current_path != "":
		$Palyer.position = Save.player_position
	$Palyer/Health.text = str(Save.Health)+"/"+str(Save.MaxHealth)
	
	
	$DiceBag.text = "Dices :
		" +str(Save.dice1.values())+"
		"+ str(Save.dice2.values())+"
		" +str(Save.dice3.values())+"
		" +str(Save.dice4.values())+"
		"+ str(Save.dice5.values())+"
		" +str(Save.dice6.values())+"
		" +str(Save.dice7.values())+"
		"+ str(Save.dice8.values())+"
		" +str(Save.dice9.values())+"
		" +str(Save.dice10.values())+"
		"+ str(Save.dice11.values())+"
		" +str(Save.dice12.values())+"
		" +str(Save.dice13.values())+"
		"+ str(Save.dice14.values())+"
		" +str(Save.dice15.values())+"
		" +str(Save.dice16.values())

						
					
		
