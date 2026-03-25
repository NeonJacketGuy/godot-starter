extends Node2D

var score := 0
var coins_total := 0

@onready var hud = $UILayer/HUD

func _ready() -> void:
	var coins = get_tree().get_nodes_in_group("coins")
	coins_total = coins.size()

	for coin in coins:
		coin.collected.connect(_on_coin_collected)

	hud.set_score(score)
	hud.show_message("Collect all the coins!")

func _on_coin_collected() -> void:
	score += 1
	hud.set_score(score)

	if score >= coins_total:
		hud.show_message("You win!")
