extends Node2D

@onready var sceneArray = get_children()
var sceneIndex = 1

func _input(event):
	if event.is_action_pressed("forward"):
		if sceneIndex < sceneArray.size():
			get_child(sceneIndex).visible = true
			sceneIndex += 1
	if event.is_action_pressed("back"):
		if sceneIndex > 1:
			sceneIndex -= 1
			get_child(sceneIndex).visible = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
