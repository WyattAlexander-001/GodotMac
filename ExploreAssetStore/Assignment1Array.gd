extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var items = [
		"milk",
		"eggs",
		"coffee",
		"strawberries",
		"bread",
		"salmon",
		"rice",
		"lettuce",
		"tea",
		"chicken patties",
		"chicken breasts" 
	]
	
	print(items)
	items.pop_back()
	items.pop_front()
	print(items)
	print(stringReturn(items[0]))
	print("=====================")
	print("items.size() = " + str(items.size()))
#	for i in range(items.size()):
#		print(stringReturn(items[i]))
	for i in items:
		print(stringReturn(i))  # prints each item directly



	
func stringReturn(arr):
	return str(arr)

