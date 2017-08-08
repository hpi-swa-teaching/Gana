search
filter: aCommitList

	self hasSearchTerm 
		ifTrue: [^ self applySearchTermTo: aCommitList]
		ifFalse: [^ aCommitList].
	