algorithm
computeGraph

	1 to: (commitList size) do: [ :index | |commit|
		commit := commitList at: index.
		self fillChildDictWith: commit.
		self childrenDict at: commit ifPresent: [self position: commit inRow: index]
									ifAbsent: [self position: commit inNewColumnForRow: index] "childless commits eg unmerged branch tips"
	].