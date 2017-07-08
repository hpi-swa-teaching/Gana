algorithm
createGraph

	self initializeAlgorithm.
	commitList withIndexDo: [ :commit :index |
		self addEdgesToChildrenFrom: commit.
		"self commitHasChildern ifTrue dox ifFalse do y"
		self childrenDict at: commit ifPresent: [:temp | self position: commit inRow: index]
									ifAbsent: [self position: commit inNewColumnForRow: index] "childless commits eg unmerged branch tips"
	].