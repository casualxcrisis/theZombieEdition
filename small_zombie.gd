extends CharacterBody2D

@onready var player = get_node("/root/level1/player_remix")


func _ready():
	$animated_small_zombie.play("zombie_left_walk")


@warning_ignore("unused_parameter")
func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 30.0
	move_and_slide()
