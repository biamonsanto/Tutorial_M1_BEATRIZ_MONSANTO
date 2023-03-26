extends Node2D
var velocidade = Vector2.ZERO #velocidade do personagem 
onready var colunacena : PackedScene = preload("res://colunas.tscn") #trazer as colunas para o cenário do jogo
var jogando =  true

func _ready(): #chamar as funções
	randomize()
	criarcoluna()

func _physics_process(delta): #colocar limites em relação as colunas
	$background.position.x -= 1
	if $background.position.x <= -1024:
		$background.position.x = 0
		$background/Label.hide()
		
	if $player.position.y < 0 : #colocar limite do personagem na tela 
		$player.position.y = 0 
	if $player.position.y > 600:
		$player.position.y = 600
	if jogando == true : #colocar colisão e velocidade
		var collision = $player.move_and_collide(velocidade/18)
		velocidade += Vector2(0,4)
		velocidade = velocidade.limit_length(220)
		if collision : #se o personagem colidir nas colunas, fazer ele perder
			jogando = false 
		if Input.is_action_just_pressed("ui_accept") : #fazer com que se o usuário clicar no "espaço", o personagem "surfe"
			velocidade = Vector2(0,-100)
	elif jogando == false: #fazer com que se o usuário perder o score volte para o zero e que vá para cena de "game over"
		Global.points = 0 
		get_tree().change_scene("res://gameover.tscn")
	$Label.text = str(Global.points)
	
func criarcoluna(): #função para criar as colunas, trazendo elas para a cena do jogo e fazer com que o cenário mude
	var coluna = colunacena.instance()
	var posicao = rand_range(-40, 144)
	coluna.position.y = posicao
	coluna.position.x = 1064
	add_child(coluna) #adiciona a coluna como filha do jogo 
	$Timer.start()

func _on_Timer_timeout(): #chamar a função criarcoluna se o jogador começar a jogar
	if jogando == true : 
		criarcoluna()

