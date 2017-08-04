as yet unclassified
initializeAlgorithm

	self
		visualisation: (Morph new color: Color transparent);
		childrenDict: Dictionary new;
		positionDict: Dictionary new;
		verticalSuccessorDict: Dictionary new;
		lastCommitPerColumn: OrderedCollection new.