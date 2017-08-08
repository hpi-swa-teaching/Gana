drawing
paintLineBetween: child and: parent
 
 	| start middle end line |
 	start := self cellSize asPoint * child - (self cellSize / 2).
 	end := self cellSize asPoint * parent - (self cellSize / 2).
	middle := (self leftOf: child is: parent) ifTrue: [(end x)@(start y - (self cellSize / 2))]
						 		 ifFalse: [(start x)@(end y + (self cellSize / 2))].
	line := (PolygonMorph vertices: {start. middle. end} color: Color transparent borderWidth: 3 borderColor: Color black) makeOpen; yourself.
	self addMorphBack: line.