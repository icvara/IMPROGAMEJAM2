extends Node2D

var HP = 10


func attack(player):
	pass
	$AnimatedSprite2D.play("attack")
	Save.Health -= 5
	$AnimatedSprite2D.play("default")
	
