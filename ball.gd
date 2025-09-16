extends CharacterBody2D
var speed: int = 350
# Random direction vector for shooting ball at the beginning.
var direction: Vector2 = Vector2(randf_range(-1,1), randf_range(-1,1))

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("action"):
		velocity = direction * speed
	# If a collision occurs, a KinematicCollision2D object is returned (otherwise, the return is null).
	var collision: KinematicCollision2D = move_and_collide(velocity * delta)
	if collision:
		# Returns the colliding body's shape's normal at the point of collision.
		velocity = velocity.bounce(collision.get_normal())
		# Returns the colliding body's attached Object (Wall-StaticBody2D).
		# We can get properties and methods from it (like detecting hits(signal), name, etc)
		#print_debug("I collided with ", collision.get_collider().name)


func _on_score_area_body_entered(body: Node2D) -> void:
	print_debug("I worked")
	queue_free()
