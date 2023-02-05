extends PathFollow2D

onready var global = get_node("/root/Globals")
var speed = 30

func _process(delta):
	
	if( global.play ):
		var newOffset = get_offset() + delta * speed
		set_offset(newOffset)
		if( get_unit_offset() == 1):
			global.damage(1)
			queue_free()




