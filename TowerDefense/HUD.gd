extends CanvasLayer

onready var global = get_node("/root/Globals")

func _on_Play_pressed():
	global.playPause()
func _on_Speed_pressed():
	global.changeSpeed()

func _process(delta):
	$Health.text = str(global.health)



