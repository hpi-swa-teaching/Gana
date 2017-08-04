accessing
commitList 

	| sortedCommitList |
	sortedCommitList := GanaVersionListBuilder new searchFrom: self repository.
	self graph: (GanaBranchGraph newFor: (sortedCommitList collect: [:wrapper | wrapper version])).
	self addVisualisationTo: sortedCommitList.
	^ self filter: sortedCommitList