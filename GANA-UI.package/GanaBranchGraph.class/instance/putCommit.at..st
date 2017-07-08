algorithm
putCommit: commit at: position

	self positionDict at: commit put: position.
	self lastCommitPerColumn at: (position x) put: commit.
	self paintNodeAt: position.
	childrenDict at: commit ifPresent: [:children | self putChildConnectionsBetween: position and: children].
	^ commit