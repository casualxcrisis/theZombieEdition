extends CharacterBody2D

signal health_depleted

@onready var _animated_sprite = $animated_player_redux
var health = 100.0

func _process(_delta):
	if Input.is_action_pressed('move_left'):
		_animated_sprite.play('run_to_left')
	elif Input.is_action_pressed('move_right'):
		_animated_sprite.play('run_to_right')
	elif Input.is_action_pressed('move_up'):
		_animated_sprite.play('run_up')
	elif Input.is_action_pressed("move_down"):
		_animated_sprite.play('run_down')
	else:
		_animated_sprite.play("idle_down")
	
func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 100
	move_and_slide()
