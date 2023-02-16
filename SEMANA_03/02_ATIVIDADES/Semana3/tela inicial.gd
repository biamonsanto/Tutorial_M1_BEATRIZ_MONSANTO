extends Node2D
var lista = []

func _on_mostrar_lista_pressed():
	var itens = "sal morango pimenta arroz"
	var item_cortado = itens.split(" ")
	print(item_cortado)
	
	for item in item_cortado:
		$RichTextLabel.text += (item+ "\n")


func _on_criar_lista_pressed():
	var itens = $LineEdit.text
	var item_cortado = itens.split(" ")
	print(item_cortado)
	
	for item in item_cortado:
		$RichTextLabel.text += (item+ "\n")


func _on_apagar_pressed():
	$RichTextLabel.text = ""
	
	
func retornar_texto(texto_do_usuario):
	$RichTextLabel.text = texto_do_usuario
	$LineEdit.text = ""

func _on_criar_texto_pressed():
	retornar_texto($LineEdit.text)
