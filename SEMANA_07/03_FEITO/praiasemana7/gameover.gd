extends Node2D

func _ready():
	pass # Replace with function body.


func _on_TextureButton_pressed(): #ir para próxima cena
	get_tree().change_scene("res://jogo.tscn")

func _on_TextureButton2_pressed(): #ir para próxima cena
	get_tree().change_scene("res://telademenu.tscn")
