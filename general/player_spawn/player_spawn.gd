@icon("res://general/icons/player_spawn.svg")
class_name PlayerSpawn extends Node2D




func _ready() -> void:
	visible = false
	await get_tree().process_frame
	#check if we have already a player
	if get_tree().get_first_node_in_group("Player"):
		print("We have a player")
		return #if we have it, do nothing

	print("No player found")
	
	#instantiate a player
	var player : Player = load("res://player/player.tscn").instantiate()
	get_tree().root.add_child(player)
	
	#position the player
	player.global_position = self.global_position
	
	
	
	
	pass
