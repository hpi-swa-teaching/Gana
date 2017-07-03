as yet unclassified
positionNodeAt: row withColumn: column And: string

	| p |
	p := column@row - (1@1).
	self addMorph:( self defaultNode 
							position: (self cellSize asPoint * p) + (self cellSize - self nodeSize / 2) asPoint;
							yourself).
	"self addMorph: (TextMorph new
						position: (self cellSize asPoint * p);
						contents: (string asText))."
	^ p