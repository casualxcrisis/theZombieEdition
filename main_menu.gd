extends Control

var menu_music = preload("res://music/Main Menu - Dark.wav")
var button_sound = preload("res://sounds/menu_7.wav")
var quit_sound = preload("res://sounds/menu_21.wav")
var play_sound = preload("res://sounds/menu_14.wav")

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


func _on_start_button_focus_entered() -> void:
	if !$play_sound.is_playing():
		$play_sound.stream = play_sound
		$play_sound.play()

func _on_quit_focus_entered() -> void:
	if !$quit_sound.is_playing():
		$quit_sound.stream = quit_sound
		$quit_sound.play()
