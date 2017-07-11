drawing
paintLineBetween: child and: parent
 
 	| start middle end line |
 	start := self cellSize asPoint * child - (self cellSize / 2 asPoint).
 	end := self cellSize asPoint * parent - (self cellSize / 2 asPoint).
	(self leftOf: child is: parent) ifTrue: [middle := (end x)@(start y - (self cellSize / 2))]
						 		 ifFalse: [middle := (start x)@(end y + (self cellSize / 2))].
	line := (PolygonMorph vertices: {start. middle. end} color: Color transparent borderWidth: 3 borderColor: Color black) makeOpen; yourself.
	self graph addMorphBack: line.