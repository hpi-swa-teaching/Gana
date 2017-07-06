algorithm
putChildConnectionsBetween: position and: childrenHeap

	self paintLineBetween: (positionDict at: childrenHeap removeFirst) and: position. "fails if smalltalk is pass by value and value is read only"