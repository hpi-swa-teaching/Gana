as yet unclassified
positionLineBetween: child And: parent

	| start end |
	start := self cellSize asPoint * child + (self cellSize / 2 asPoint).
	end := self cellSize asPoint * parent + (self cellSize / 2 asPoint).

	self addMorphBack:( LineMorph from: start to: end color: (Color black) width: 2).