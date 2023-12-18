extends AudioStreamPlayer

var rumble = preload("res://assets/music/break_out_rumble.ogg")

func _on_rumble_timer_timeout():
	stream = rumble
	play()


func _on_player_playerdeath():
	playing = false
