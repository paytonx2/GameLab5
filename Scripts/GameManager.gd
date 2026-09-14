extends Node3D

# ---------- VARIABLES ---------- #

var score = 0
var coins_required = 0

# ---------- FUNCTIONS ---------- #

func _process(_delta):
	show_mouse_cursor()

# Making Cursor visible using "mouse_visible" key which is assigned in Project Settings > Input Map
func show_mouse_cursor():
	if Input.is_action_just_pressed("mouse_visible"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func add_score():
	score += 1

# Called by each level's root script on load so the HUD/door know how many coins this level has
func reset_level(total_coins):
	score = 0
	coins_required = total_coins
