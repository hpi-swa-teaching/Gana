as yet unclassified
positionNodeAt: row withColumn: column

	| p |
	p := column@row - (1@1).
	self addMorph:( self defaultNode 
							position: (self nodeSize asPoint * p);
							yourself).
	^ p