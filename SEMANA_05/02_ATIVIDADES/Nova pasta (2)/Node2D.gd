extends Node2D

var teste = false
var valor = 0
var numero = 0
var lista = []
var nome = ""
var examinar #essa variável irá analisar e ajudar na leitura do código
func _on_Button_pressed():
	examinar = str($LineEdit.text).split(" ") #separará o nome do número
	#Coletando dados inseridos pelo usuário
	numero = int(examinar[1]) #faltou o "$"; a palavra "numero" estava com assento; 
	nome = str(examinar[0])
	$LineEdit.text = nome


func _on_Button2_pressed():

#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #"numero" estava com "n" maiúsculo, faltava um "tab"
		lista.append(numero) #"numero" estava com "n" maiúsculo
	$Label.text = str(numero)

func _on_Button3_pressed():
	var cont=0 #faltou atribuir uma variável
	var i=0 #faltou a variável
	#Mudando o nome do usuário de acordo com os dados da lista
		#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while(i<len(lista)):
			
		if(lista[i]%2==1):
			cont=1
		if(cont==1):
			$Label2.text = nome+"baldo"
		i += 1
			
