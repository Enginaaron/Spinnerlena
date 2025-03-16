extends Node3D

@export var rotation_speed: float = 0.0  # Initial speed (RPM)
var rotation_per_frame: float = 0.0
const decelerate: float = 5.0

func _process(delta):
	rotation_per_frame = (rotation_speed / 60.0) * TAU * delta  # convert RPM to radians per frame
	rotate_y(rotation_per_frame)
	rotation_per_frame *= 0.7
	
	# constant deceleration
	if rotation_speed > 0:
		rotation_speed = max(rotation_speed - decelerate * delta, 0)

func increase_speed():
	rotation_speed += 2  # increase speed by x RPM (adjust as needed)
