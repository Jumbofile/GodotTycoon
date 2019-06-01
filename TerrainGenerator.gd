extends Spatial

#Class Definition:
#This class handles terrain generation on scene startup
#By: Gregory Plachno, 5/31/19

#Debugging bool
var IS_DEBUGGING = true

#Global vars
var terrainWidth
var terrainHeight

# Called when the node enters the scene tree for the first time.
func _ready():
	#MAKE A CALL TO A DEFINITION CLASS THAT DEFINES WIDTH AND HEIGHT OF THE TERRAIN
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#This function is just a bunch of print calls to make sure everything works
func debug():
	print("Nothing here")
	