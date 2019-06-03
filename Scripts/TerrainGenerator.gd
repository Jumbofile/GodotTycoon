 extends Spatial

#Class Definition:
#This class handles terrain generation on scene startup
#By: Gregory Plachno, 5/31/19

#Debugging bool
var IS_DEBUGGING = true

#Grid
var grid = load("res://Scripts/Grid.gd").new()

#Global vars
var terrainWidth = 80
var terrainHeight = 80
var Ground_Cube = load("res://Scenes/Ground_Cube.tscn")

#Creates the terrain during once the scene is active
func _ready():
	#Used to add a count to the copies of Ground_cube
	var counter = 0;
	
	#Double for loop to make a 2d grid of terrain_cubes
	for i in range(terrainWidth):
		for j in range(terrainHeight):
			var temp = Ground_Cube.instance()
			temp.set_name("Ground_Cube" + str(counter))
			add_child(temp)
			var newPosition = grid.getNearestPointOnGrid(Vector3(i, 0, j))
			temp.translate(newPosition)
			counter +=1
#This function is just a bunch of print calls to make sure everything works
func debug():
	print("Nothing here")
	