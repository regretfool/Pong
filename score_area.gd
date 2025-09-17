extends Area2D
var score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	# Get reference to ball node, ../ to go up the tree.
	var ball = get_node("../Ball")
	# Checks if Ball hits the wall, if it was a different object it wouldn't react
	if ball:
		#ball.queue_free() # Remove ball from scene (and add score + reset game)
		print_debug("score: ", score) # Score counts separately for paddles, need a global variable or somewhere in game manager
		score += 1
