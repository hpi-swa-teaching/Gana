as yet unclassified
initializeSubmorphs

	| circleSize vertices |
	circleSize := 30@30.
	vertices := OrderedCollection new.
	1 to: self graphSource size do: [ :row || p |
		p := (self graphSourceLeftness at: row)@row - (1@1).
		self positionNodeAt: p With: 'hi'.
		vertices add: p].
	vertices := (vertices * circleSize) + (10@10).
	self addMorphBack: (self defaultLine setVertices: vertices asArray; yourself).