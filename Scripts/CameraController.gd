extends Spatial

#Class Definition:
#This class handles movement of the camera
#By: Gregory Plachno, 5/30/19

#Debugging bool
var IS_DEBUGGING = true

#Global Vars
var cameraSpeed = 1
var camera

# Called when the node enters the scene tree for the first time.
func _ready():
	camera = self
	
#Called when the user hits keys on the keyboard
#Keyboard commands allowed are:
#Up arrow, down arrow, left arrow, right arrow
# warning-ignore:unused_argument
func _input(ev):
	#Movement vector
	var inputMovement = Vector3(0, 0, 0)
	
	#Movement inputs
	if Input.is_key_pressed(KEY_UP):
		inputMovement.z += cameraSpeed
	if Input.is_key_pressed(KEY_DOWN):
		inputMovement.z -= cameraSpeed
	if Input.is_key_pressed(KEY_RIGHT):
		inputMovement.x += cameraSpeed
	if Input.is_key_pressed(KEY_LEFT):
		inputMovement.x -= cameraSpeed
	
	#move the camera
	camera.translate(inputMovement)
	
	#Calls the magic debug function 
	if IS_DEBUGGING:
		debug()

#This function is just a bunch of print calls to make sure everything works
func debug():
	print("Camera Position: " + str(camera.translation))
	#pass