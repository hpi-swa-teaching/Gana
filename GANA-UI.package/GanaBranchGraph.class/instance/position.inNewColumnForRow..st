algorithm
position: commit inNewColumnForRow: row

	self lastCommitPerColumn add: commit.
	self putCommit: commit at: (self lastCommitPerColumn size)@row.