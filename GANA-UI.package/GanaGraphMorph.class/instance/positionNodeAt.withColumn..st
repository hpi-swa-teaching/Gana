as yet unclassified
positionNodeAt: row withColumn: column

	| p |
	p := column@row - (1@1).
	self addMorph:( self defaultNode 
							position: (self cellSize asPoint * p) + (self cellSize - self nodeSize / 2) asPoint;
							yourself).
	^ p