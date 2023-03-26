extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_TextureButton_pressed(): #ir para próxima cena
	get_tree().change_scene("res://telademenu.tscn")


func _on_TextureButton2_pressed():# ir para próxima cena 
	get_tree().change_scene("res://jogo.tscn")
