extends Node2D

var HP = 1000

var value_dmg = 0

func attack(player):
	pass
	$AnimatedSprite2D.play("attack")
	value_dmg = [0,2,2,4].pick_random()
	Save.Health -= value_dmg

	await get_tree().create_timer(1.8).timeout



	$AnimatedSprite2D.play("default")
	
