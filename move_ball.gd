extends KinematicBody


func _ready():
	pass

var velocity = Vector3(0, 0, 0)
var rotatespeed = 5

func _physics_process(delta):
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_right"):
		velocity.y = -1																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																						
		move_and_slide(velocity)
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 1
		move_and_slide(velocity)
		$MeshInstance.rotate_z(deg2rad(-rotatespeed))
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -1
		move_and_slide(velocity)
		$MeshInstance.rotate_z(deg2rad(rotatespeed))
	
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.y = 1
		move_and_slide(velocity)
	elif Input.is_action_pressed("ui_up"):
		velocity.z = -1
		move_and_slide(velocity)
	elif Input.is_action_pressed("ui_down"):
		velocity.z = 1
		move_and_slide(velocity)


func _on_enemy_body_entered(body):
	if body.name == "White":
		get_tree().change_scene("res://gameover.tscn")
		
		
		
var score = 0

func _on_RigidBody_body_entered(body):
	if body.name == "White":
		score += 1
		print(score)
