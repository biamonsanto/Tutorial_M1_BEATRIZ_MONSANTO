extends Node2D

func _ready():
	pass # Replace with function body.
var lista = []
func _on_Button_pressed():
	
	var nome = $Linenome.text 
	var velocidade = int ($Linevelocidade.text)
	var aceleracao = int ($Lineacel.text)
	var energia = int ($Lineenergia.text)  
	var consumo = int ($Lineconsumo.text) 
	
	var nave =  [str(nome), str(velocidade), str(energia), str(consumo)]
	
	lista.append(nave)
	
	$ItemList.add_item(str(nave))

func calculardistancia(nave, tempo):
	var velocidadedanave = int(nave[1])
	var aceleracaodanave = int(nave[2])
	var energiadanave =  int(nave[3])
	var consumodanave = int(nave[4])
	
	var tempochegada =  velocidadedanave * aceleracaodanave / tempo
	var energiagasta = tempochegada * energiadanave / consumodanave 
	
	return tempochegada 

func _on_Button2_pressed():
	var tempo = int($Linedruracao.text)
	var distancia = 0 
	var navevencedora = ""
	
	for i in lista :
		var d = calculadistancia(nave, tempo) 
		if d > distancia :
			distancia = d 
			navevencedora = n [0]
	$Label.text = navevencedora
