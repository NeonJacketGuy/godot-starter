extends BaseLevel

@onready var player := $PlayerSpawn/Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	next_level = "res://scenes/levels/level-02.tscn"
	
	player.set_camera_boundaries(
		$WorldBoundary/Top.position,
		$WorldBoundary/Right.position,
		$WorldBoundary/Bottom.position,
		$WorldBoundary/Left.position
	)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
