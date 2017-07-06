drawing
paintLineBetween: child and: parent
 
 	| start end |
 	start := self cellSize asPoint * child + (self cellSize / 2 asPoint).
 	end := self cellSize asPoint * parent + (self cellSize / 2 asPoint).
 
 	self graph addMorphBack:( LineMorph from: start to: end color: (Color black) width: 2). 