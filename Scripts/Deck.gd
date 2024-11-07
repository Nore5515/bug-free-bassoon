class_name Deck extends Node

var cards = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	var testCard = Card.new("noahs cool card", 4)
	var testCard2 = Card.new("abes ok card", 3)
	add_card(testCard)
	add_card(testCard2)
	add_card(testCard2)
	add_card(testCard2)
	add_card(testCard2)
	add_card(testCard2)
	
	print (draw_card().cardName)

func add_card(c) -> void:
	cards.append(c) 
	
func draw_card() -> Card:
	return cards[randi() % cards.size()]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
