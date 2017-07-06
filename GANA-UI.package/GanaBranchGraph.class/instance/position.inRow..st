algorithm
position: commit inRow: row

	| youngestChild |
	youngestChild := self childrenDict at: commit first.
	self verticalSuccessorDict at: youngestChild ifPresent: [self position: commit inNewColumnForRow: row] "new branch"
												ifAbsentPut: [self putCommit: commit at: row@(self positionDict at: youngestChild)]