extends Node

#Class Definition:
#This class handles grid and grid operations
#By: Gregory Plachno, 5/31/19

#Debugging bool
var IS_DEBUGGING = true

#Global vars
var cubeSize = 1
var gridSize = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	#MAKE A CALL TO A DEFINITION CLASS THAT DEFINES WIDTH AND HEIGHT OF THE TERRAIN
	pass # Replace with function body.

#Returns the nearest point on a grid based upon the passed in Vector3
func GetNearestPointOnGrid(pos):
	var newPos = Vector3(round(pos.x / cubeSize), round(pos.y / cubeSize), round(pos.z / cubeSize))
	return newPos

#This function is just a bunch of print calls to make sure everything works
func debug():
	print("Nothing here")
	