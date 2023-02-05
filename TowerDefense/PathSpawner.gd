extends Path2D

var timer = 0
export var spawnTime = 15
export (PackedScene) var follower
onready var global = get_node("/root/Globals")

func _process(delta):
	
	if( global.play ):
		
		timer = timer + delta
			
		if( timer > spawnTime):
			var newFollower = follower.instance()
			add_child(newFollower)
			timer = 0

