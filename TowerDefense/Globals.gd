extends Node

var play = false
var health = 100
var time = 1

func playPause():
	play = !play
func changeSpeed():
	if(time == 1):
		time = 2
		Engine.set_time_scale(2)
	else:
		time = 1
		Engine.set_time_scale(1)
func damage(amount):
	health -= amount
