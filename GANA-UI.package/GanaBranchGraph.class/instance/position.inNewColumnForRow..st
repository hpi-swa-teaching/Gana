algorithm
position: commit inNewColumnForRow: row

	self lastCommitPerColumn add: commit.
	self putCommit: commit at: row@(self lastCommitPerColumn size).