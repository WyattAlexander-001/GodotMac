extends Node

@onready var message = $Message
@onready var victory = $Victory

var guess
var count = 1
var min_guess = 0
var max_guess = 1000
var game_end = false

func _ready():
	guess = (min_guess + max_guess) >> 1  #500
	print("============")
	print("============")
	print("Guess a number from 0-1000")
	print("Is " + str(guess) + " your number?")
	message.text = "Is " + str(guess) + " your number?"
func _process(delta):
	if Input.is_action_just_pressed("up"):
		_try_guess("up")
		count+=1
	elif Input.is_action_just_pressed("down"):
		_try_guess("down")
		count+=1
	elif Input.is_action_just_pressed("space"):
		if game_end == true:
			_restart_game()
		else:
			_end_game()

func _try_guess(type):
	if type == "up":
		min_guess = guess
	else:
		max_guess = guess
	guess = (min_guess + max_guess) >> 1
	print("Is " + str(guess) + " your number?")
	message.text = "Is " + str(guess) + " your number?"
		
func _end_game():
	game_end = true
	print("Yes! Over at attempts: " + str(count))
	victory.text = "Yes! Over at attempts: " + str(count) + " SPACE to restart"
	

func _restart_game():
	get_tree().reload_current_scene()
	
