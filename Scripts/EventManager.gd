extends Node

var random_event

func load_events():
	var directory = DirAccess.open("res://Event Cards")
	var event_cards = []
	
	for file in directory.get_files():
		if file.ends_with(".tres"): 
			var event = load("res://Event Cards/" + file)
			event_cards.append(event)
	
	return event_cards
	
	
func randomize_event():
	var events = load_events()
	var event = events.pick_random()
	
	print(event.title)
	print(event.description) 



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize_event()
