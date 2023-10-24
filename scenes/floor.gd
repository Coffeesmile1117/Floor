extends Sprite2D

var degrees : float = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	degrees += 100 * delta
	var radi = deg_to_rad(degrees)
	var _rotation_position = Vector2(sin(radi),cos(radi))
	var rotation_position_2 = Vector2(cos(radi),sin(radi))
	var rotation_position_3 = Vector2(tan(sin(radi)),-cos(radi))
	$Icon.position = rotation_position_3 * 200 * sin(radi)
	$Icon2.position = rotation_position_2 * 200 * -sin(radi) 
	$Icon3.position = rotation_position_3 *200 *-sin(radi)

