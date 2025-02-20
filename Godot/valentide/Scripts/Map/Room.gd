extends Node

class_name Room

var left
var right
var top
var bottom

#region room size
func GetWidth():
	return right - left + 1
	
func GetHeight():
	return top - bottom + 1
	
#endregion

#region draw
func draw():
	#loop for room size
	var  x = left
	var y = bottom
	while x <= right:
		x += 1
		while y <= top:
			y += 1
			# make tiles
			print("test")
			
#endregion
