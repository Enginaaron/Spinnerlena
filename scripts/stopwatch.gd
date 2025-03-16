extends Node

var time_elapsed := 0.0
var running := false

@onready var label := $Label  # Reference to the Label node

func _process(delta):
	if running:
		time_elapsed += delta  # Increase time
		self.text = "Time: %.2f sec" % time_elapsed  # Display time

func _on_button_pressed():
	if not running:  
		running = true  # Start stopwatch on first click
