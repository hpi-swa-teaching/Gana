algorithm
position: commit inRow: row

	| youngestChild |
	youngestChild := (self childrenDict at: commit) first.
	self verticalSuccessorDict at: youngestChild ifPresent: [:temp | self position: commit inNewColumnForRow: row] "new branch"
												ifAbsentPut: [self putCommit: commit at: ((self positionDict at: youngestChild) x @row)]