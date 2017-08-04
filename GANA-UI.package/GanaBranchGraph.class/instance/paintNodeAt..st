drawing
paintNodeAt: position

	| p |
	p := position - (1@1).
	self visualisation addMorph:( self class defaultNode 
							position: (self cellSize asPoint * p) + (self cellSize - self nodeSize / 2) asPoint;
							yourself).