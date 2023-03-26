extends Node2D

func _ready():
	pass 

func _process(delta): #velocidade das colunas
	self.position.x -= 2

func _on_Area2D_body_entered(body): #se o personagem passar entre as colunas, adicionar score
	Global.points += 1 
