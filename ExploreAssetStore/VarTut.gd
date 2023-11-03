extends Node

# Globally Scoped Variables
var pie = 3.14
var multiplier = 2

func _ready():
	var localScoped = "Internal Variable"
	print(localScoped)
	print("JIM! " + str(pie))
	print(pie)
	pie *= multiplier
	print(pie)
	print(8 >> 1) # IT WORKS! /2
	print(float("24") + 100)
	
	

