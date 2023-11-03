extends Node

func _ready():
	var nameArr = [
		"Wyatt", 
		"Anni", 
		"Mark", 
		"Menchie"
	]
	
	nameArr.append("Jim")
	nameArr.append("Joe")
	nameArr.append("Bob")
	#pop() and pop_back()
	var ageArr = [
		29, 
		27, 
		65, 
		55,
		100,
		200,
		300
	]
	
	
	for i in nameArr:
		print("Hello: " + i)
	
	print("Position one is: " + nameArr[0])
	print("============")
	
	for i in nameArr.size(): # Could use nameArr.size due to them being same size or range(4)
		print(nameArr[i] + " is: " + str(ageArr[i]))
	
