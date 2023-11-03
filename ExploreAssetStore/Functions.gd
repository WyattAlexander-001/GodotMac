extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	printFamily()
	multiplier(3)
	multiplier()
	multiplier(getSpecialNumber(7))

func printFamily():
	var family = ["Wyatt", "Anni", "Casper"]
	print(family)
	
func multiplier(num = 10):
	print(4 * num)
	
func getSpecialNumber(num):
	return num
