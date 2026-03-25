extends Control

@onready var score_label: Label = $MarginContainer/VBoxContainer/ScoreLabel
@onready var message_label: Label = $MarginContainer/VBoxContainer/MessageLabel

func set_score(value: int) -> void:
	score_label.text = "Score: %d" % value

func show_message(text: String) -> void:
	message_label.text = text

func clear_message() -> void:
	message_label.text = ""
