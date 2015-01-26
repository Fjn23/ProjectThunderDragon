
extends Panel

# member variables here, example:
# var a=2
# var b="textvar"

var String1 = "I'm a lable to display word by word"
var n = 1
var curStr = ""

func _on_button_pressed():
	
	if(n <= String1.length()): 
		curStr = String1.left(n)
		get_node("Label").set_text(curStr)
		n += 1
		

func _ready():
	get_node("Button").connect("pressed",self,"_on_button_pressed")


