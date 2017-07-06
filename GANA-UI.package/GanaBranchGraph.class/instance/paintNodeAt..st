drawing
paintNodeAt: position

	| p |
	p := position - (1@1).
	self graph addMorph:( self defaultNode 
							position: (self cellSize asPoint * p) + (self cellSize - self nodeSize / 2) asPoint;
							yourself).