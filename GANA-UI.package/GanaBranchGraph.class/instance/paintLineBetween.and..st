drawing
paintLineBetween: child and: parent
 
 	| start middle end line |
 	start := self cellSize asPoint * child - (self cellSize / 2 asPoint).
 	end := self cellSize asPoint * parent - (self cellSize / 2 asPoint).
	(child - parent) x < 0 ifTrue: [middle := (end x)@(start y)]
						  ifFalse: [middle := (start x)@(end y)].
						
	line := (PolygonMorph vertices: {start. middle. end} color: Color black borderWidth: 2 borderColor: Color black) makeOpen.
	self visualisation addMorphBack: line.