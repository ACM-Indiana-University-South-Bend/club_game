extends KinematicBody2D #type this will extende what ever atribute it is calling on 
class_name ActorBaseClass #is the class constructor

const FLOOR_NORMAL: = Vector2.UP #.up is (0,-1)
#the export is now exported in the window right  in the world screen
export var speed: = Vector2(300.0, 1000.0)
export var gravityX: = 3000.0 # this will apply to gravity on the x axis

var velocity: = Vector2.ZERO # moving 0px on the x and 0 on the y



