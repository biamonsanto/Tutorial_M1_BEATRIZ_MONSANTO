extends TextureButton

func _ready():
	pass 

func _on_TextureButton_pressed(): #ir para próxima cena
	get_tree().change_scene("res://Node2D.tscn")
