extends Sprite2D

var degrees : float = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	degrees += 100 * delta
	var radi = deg_to_rad(degrees)
	var rotation_position = Vector2(sin(radi),cos(radi))
	$Icon.position = rotation_position * 200
