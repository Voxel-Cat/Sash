extends Node2D
# 1. Reference the scene (preloading is best for performance)
const badgeScene = preload("res://SashBadge.tscn")

func spawnBadge():
	# 2. Create an instance of the scene in memory
	var badge = badgeScene.instantiate()
	
	# Optional: Modify properties before adding it to the tree
	badge.position = Vector2(100, 200)
	
	# 3. Add it as a child of the current node to make it appear in the game
	add_child(badge)
	
	
	spawnBadge()
