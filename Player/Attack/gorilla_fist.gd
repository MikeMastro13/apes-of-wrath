extends Area2D

var level = 1
var hp = 5
var speed = 100
var damage = 15
var knockback_amount = 100
var attack_size = 1.0

var angle = Vector2.ZERO
var offset = Vector2.ZERO
var currentOffset = Vector2.ZERO

@onready var sprite = get_node("Sprite2D")
@onready var player = get_tree().get_first_node_in_group("player")
@onready var player_velocity = player.velocity.normalized()

signal remove_from_array(object)

func _ready():
	match level:
		1:
			hp = 5
			damage = 5
			knockback_amount = 100
			attack_size = 1.0 * (1 + player.spell_size)
		2:
			# TODO: Add second fist behind player
			hp = 5
			damage = 5
			knockback_amount = 100
			attack_size = 1.0 * (1 + player.spell_size)
		3:
			# TODO: Add triangle punches
			hp = 5
			damage = 8
			knockback_amount = 100
			attack_size = 1.0 * (1 + player.spell_size)
		4:
			# TODO: Add two fists horizontal and then two fists vertical
			hp = 5
			damage = 8
			knockback_amount = 100
			attack_size = 1.0 * (1 + player.spell_size)

	var tween = create_tween()
	tween.tween_property(self,"scale",Vector2(1,1)*attack_size,1).set_trans(Tween.TRANS_QUINT).set_ease(Tween.EASE_OUT)
	tween.play()
	
	angle = Vector2(player.last_movement.x * 16, 0)
	position = player.position + Vector2(angle.x, 0)
	
	if player.last_movement.x > 0:
		sprite.flip_h = false
	elif player.last_movement.x  < 0:
		sprite.flip_h = true
	

func _physics_process(delta):
	# TODO: Move forward after initial attack but remain in line with the player
	offset = angle * speed * delta
	currentOffset += offset / 10
	position = player.position + Vector2(angle.x, 0) + Vector2(clamp(currentOffset.x, -15, 15), 0)

func enemy_hit(charge = 1):
	hp -= charge
	if hp <= 0:
		emit_signal("remove_from_array",self)
		queue_free()

func _on_timer_timeout():
	emit_signal("remove_from_array",self)
	queue_free()
