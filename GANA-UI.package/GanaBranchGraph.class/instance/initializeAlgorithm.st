algorithm
initializeAlgorithm

	self
		graph: ((Morph new) color: Color transparent);
		childrenDict: Dictionary new;
		positionDict: Dictionary new;
		verticalSuccessorDict: Dictionary new;
		lastCommitPerColumn: OrderedCollection new.