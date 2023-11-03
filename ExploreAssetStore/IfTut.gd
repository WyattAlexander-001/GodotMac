extends Node

var wyatt_age = 27
var anni_age =  20
var threshold = 21
# Called when the node enters the scene tree for the first time.
func _ready():
	if wyatt_age > anni_age:
		print("Wyatt is older than Anni")
		if(wyatt_age >= threshold and anni_age >=threshold):
			print("You both can drink")
		elif(wyatt_age < threshold and anni_age >= threshold):
			print("Only Anni can drink")
		elif(wyatt_age >= threshold and anni_age < threshold):
			print("Only Wyatt can drink")	
		else:
			print("No one can drink")
	else:
		print("Anni is older")
	
