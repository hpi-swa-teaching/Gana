as yet unclassified
positionLineBetween: child And: parent

	| start end |
	start := self nodeSize asPoint * child.
	end := self nodeSize asPoint * parent.

	self addMorphBack:( LineMorph from: start to: end color: (Color black) width: 2).