class_name GameOver
extends Node

func gameover() -> void:
	%UI.gameover()
	$Death.playing = true
	get_tree().paused = true
	await get_tree().create_timer(10.0).timeout
	get_tree().reload_current_scene()
