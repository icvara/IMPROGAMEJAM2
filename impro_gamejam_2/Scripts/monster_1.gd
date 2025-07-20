extends Node2D
@export var HP = 10

var value_dmg = 0

func attack(player):
	pass
	$AnimatedSprite2D.play("attack")
	value_dmg = [8,4,0,4].pick_random()
	Save.Health -= value_dmg

	await get_tree().create_timer(1.8).timeout



	$AnimatedSprite2D.play("default")
	
