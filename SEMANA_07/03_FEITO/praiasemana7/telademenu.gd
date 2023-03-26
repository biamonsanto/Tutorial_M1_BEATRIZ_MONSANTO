extends Node2D

func _ready():
	pass # Replace with function body.



func _on_TextureButton_pressed(): #apó apertar o botão ir para próxima cena
	get_tree().change_scene("res://Node2D.tscn")
