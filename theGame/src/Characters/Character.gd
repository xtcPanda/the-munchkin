extends KinematicBody2D

class_name Character

export var speed: = Vector2(400.0, 500.0)
export var gravity: = 3500.0

var velocity: = Vector2.ZERO
const FLOOR_NORMAL = Vector2.UP

#func _physics_process(delta: float) -> void:
#		velocity.y = max(velocity.y, speed.y)
##		you can do the same with if
##		if(velocity.y > speed.y):
##			velocity.y = speed.y

