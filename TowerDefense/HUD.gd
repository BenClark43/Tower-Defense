extends CanvasLayer

onready var global = get_node("/root/Globals")
var build_mode = false
var build_type
var build_location
var tower_type


func _ready():
	for i in get_tree().get_nodes_in_group("build_buttons"):
		i.connect("pressed", self, "initiate_build_mode", [i.get_name()])

func _on_Play_pressed():
	global.playPause()
func _on_Speed_pressed():
	global.changeSpeed()

func _process(delta):
	$Health.text = str(global.health)
	

func inititate_build_mode(tower_type):
	build_type = tower_type + "T1"
	build_mode =  true
	var position = get_global_mouse_position()
	set_tower_preveiw(build_type, position)

func set_tower_preview(tower_type, mouse, mouse_position):
	var drag_tower = load("res://Turrets.gd" + tower_type + ".tscn").instance()
	drag_tower.set_name("DragTower")
	
	var control = Control.new()
	control.add_child(drag_tower, true)
	control.rect_position = mouse_position
	control.set_name("TowerPreview")
	add_child(control, true)

