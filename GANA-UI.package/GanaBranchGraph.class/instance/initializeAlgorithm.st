algorithm
initializeAlgorithm

	self
		color: Color transparent;
		childrenDict: Dictionary new;
		positionDict: Dictionary new;
		verticalSuccessorDict: Dictionary new;
		lastCommitPerColumn: OrderedCollection new.