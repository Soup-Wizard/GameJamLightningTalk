extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_visibility_changed():
	$revealTimer.start()


func _on_reveal_timer_timeout():
	var tween = get_tree().create_tween()
	tween.tween_property($cover, "position", Vector2($cover.position.x, 1000), 7.0)
