algorithm
putChildConnectionsBetween: position and: children

	children do: [:child | self paintLineBetween: position and: (positionDict at: child)].