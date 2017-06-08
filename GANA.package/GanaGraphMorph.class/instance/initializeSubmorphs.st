as yet unclassified
initializeSubmorphs

	| circleSize vertices commitList |
	circleSize := self nodeSize asPoint.
	vertices := OrderedCollection new.
	commitList := self graphSource.
	1 to: commitList size do: [ :row || p |
		p := self positionNodeAt: row For: (commitList at: row).
		vertices add: p].
	vertices := (vertices * circleSize) + (self nodeSize / 2) asPoint.
	self addMorphBack: (self defaultLine setVertices: vertices asArray; yourself).