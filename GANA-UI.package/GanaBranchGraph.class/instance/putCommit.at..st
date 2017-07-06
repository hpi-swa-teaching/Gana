algorithm
putCommit: commit at: position

	self positionDict at: commit put: position.
	self lastCommitPerColumn at: (position x) put: commit.
	self paintNodeAt: position.
	self putChildConnectionsBetween: commit and: (childrenDict at: commit).