extends CharacterBody2D
var speed = 3
var direction = Vector2(randf_range(-1,1), randf_range(-1,1))

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("action"):
		velocity = direction * speed
	move_and_collide(velocity)
