extends Button


func _ready():
	pass


func _on_startgamebutton_pressed():
	get_tree().change_scene("res://Field.tscn")
