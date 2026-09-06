extends Control

var menu_music = preload("res://music/Main Menu - Dark.wav")
var button_sound = preload("res://sounds/menu_7.wav")

func _process(delta: float) -> void:
	if !$menu_music.is_playing():
		$menu_music.stream = menu_music
		$menu_music.play()

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://survivorsGame.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_start_button_mouse_entered() -> void:
	if !$button_sound.is_playing():
		$button_sound.stream = button_sound
		$button_sound.play()


func _on_quit_mouse_entered() -> void:
	if !$button_sound.is_playing():
		$button_sound.stream = button_sound
		$button_sound.play()
