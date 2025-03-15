extends Node3D

@export var rotation_speed: float = 0.0  # Initial speed (RPM)
var rotation_per_frame: float = 0.0

func _process(delta):
	rotation_per_frame = (rotation_speed / 60.0) * TAU * delta  # Convert RPM to radians per frame
	rotate_y(rotation_per_frame)

func increase_speed():
	rotation_speed += 10  # Increase speed by 10 RPM (adjust as needed)
