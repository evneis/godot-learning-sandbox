extends Node2D

signal health_depleted(old_value, new_value)

var health = 10

func take_damage(amount):
	var old_health = health
	health -= amount
	if health <= 0:
		health_depleted.emit(old_health, health)