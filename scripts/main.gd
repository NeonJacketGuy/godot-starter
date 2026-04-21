extends Node2D

var score := 0
var coins_total := 0

@onready var hud = $UILayer/HUD

func _ready() -> void:
	reset_level()

func _on_coin_collected() -> void:
	score += 1
	hud.set_score(score)

	if score >= coins_total:
		hud.show_message("You win!")
		%ScreenFade.fade_out()
		
		
func load_next_level() -> void:
		#we need to get the curant level
	var current_level = $%LevelHolder.get_child(0)
	if current_level == null:
		#how did we get to this lowly state?
			# maybe and game?
		return
			
	
	var next_level_path : String = current_level.get("next_level")
	
	
	if next_level_path != null:
		pass
		
		#get the next level resorce and load it/validate
		#we need to queue_free current level
		#we need a new level instance in LevelHolder
		
		
func reset_level() -> void:
	var coins = get_tree().get_nodes_in_group("coins")
	coins_total = coins.size()

	for coin in coins:
		coin.collected.connect(_on_coin_collected)

	hud.set_score(score)
	hud.show_message("Collect all the coins!")
		


func _on_screen_fade_faded_out() -> void:
	load_next_level()
