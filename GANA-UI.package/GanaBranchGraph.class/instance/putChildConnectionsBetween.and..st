algorithm
putChildConnectionsBetween: position and: childrenHeap

	| positionA |
	positionA := positionDict at: (childrenHeap removeFirst).
	self paintLineBetween: positionA and: position. "fails if smalltalk is pass by value and value is read only"