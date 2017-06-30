as yet unclassified
positionLineBetween: child And: parent

	| start end |
	start := self nodeSize asPoint * child + (self nodeSize / 2 asPoint).
	end := self nodeSize asPoint * parent + (self nodeSize / 2 asPoint).

	self addMorphBack:( LineMorph from: start to: end color: (Color black) width: 2).