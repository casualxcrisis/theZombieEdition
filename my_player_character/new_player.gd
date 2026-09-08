extends CharacterBody2D

@onready var _animation_player = $AnimationPlayer

func _process(_delta):
	if Input.is_action_pressed("move_left"):
		$Sprite2D.flip_h = false
		_animation_player.play('side_run')
	elif Input.is_action_pressed("move_right"):
		$Sprite2D.flip_h = true
		_animation_player.play('side_run')
	elif Input.is_action_pressed('move_down'):
		_animation_player.play('vertical_run')
	elif Input.is_action_pressed("move_up"):
		_animation_player.play('run_up')
	else:
		_animation_player.stop()


		

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 150
	move_and_slide()
