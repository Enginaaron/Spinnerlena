extends Area3D

@onready var mesh: MeshInstance3D = $ButtonMesh
@onready var area: Area3D = $Area3D
@onready var selena: MeshInstance3D = $"../Selena"

var is_pressed := false
var original_position: Vector3
var pressed_offset = Vector3(0, -0.1, 0)

func _ready():
	original_position = mesh.position
	self.input_event.connect(_on_input_event)

func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			press_button()
		elif not event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			release_button()

func press_button():
	if not is_pressed:
		is_pressed = true
		mesh.position = original_position + pressed_offset
		selena.increase_speed()

func release_button():
	is_pressed = false
	mesh.position = original_position
