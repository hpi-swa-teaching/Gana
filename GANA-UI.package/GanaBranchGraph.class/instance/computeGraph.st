algorithm
computeGraph

	1 to: (commitList size) do: [ :index | | commit |
		index == 7 ifTrue: [1 halt.].
		index == 11 ifTrue: [1 halt.].
		index == 16 ifTrue: [1 halt.].
		commit := (commitList at: index) version.
		self fillChildDictWith: commit.
		self childrenDict at: commit ifPresent: [:temp | self position: commit inRow: index]
									ifAbsent: [self position: commit inNewColumnForRow: index] "childless commits eg unmerged branch tips"
	].