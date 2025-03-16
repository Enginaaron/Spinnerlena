extends Label

@onready var selena = $"../../Selena"

func _process(delta):
	self.text = "RPM = "+str(snapped(selena.rotation_speed,0.1))
