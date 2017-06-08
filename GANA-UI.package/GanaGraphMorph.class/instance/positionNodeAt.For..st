as yet unclassified
positionNodeAt: row For: aVersion

	| col p |
	col := self historians at: aVersion historians first name asString.
	p := col@row - (1@1).
	self addMorph:( self defaultNode 
							position: (self nodeSize asPoint * p);
							item: aVersion;
							yourself).
	^p