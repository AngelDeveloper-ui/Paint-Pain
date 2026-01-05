extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer: Timer = $Timer
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D


func _ready():
	animation_player.play("new_animation")
	audio_stream_player_2d.play()
	timer.start()
	pass
	


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://escenas/prueba.tscn")
	pass
