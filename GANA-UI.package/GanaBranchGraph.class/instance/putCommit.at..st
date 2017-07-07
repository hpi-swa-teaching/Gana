algorithm
putCommit: commit at: position

	self positionDict at: commit put: position.
	self lastCommitPerColumn at: (position x) put: commit.
	self paintNodeAt: position.
	childrenDict at: commit ifPresent: [:temp | self putChildConnectionsBetween: position and: (childrenDict at: commit)]