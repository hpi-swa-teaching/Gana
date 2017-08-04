as yet unclassified
commitList 

	| x y segmentSize sortedCommitList |
	self flag: #refactor. "How do we save the list heights etc.?"
	sortedCommitList := GanaVersionListBuilder new searchFrom: (self repository).
	self graph: (GanaBranchGraph newFor: (sortedCommitList collect: [:wrapper | wrapper version])).
	x := 400.
	y := graph cellSize.
	segmentSize := x@y.
	sortedCommitList withIndexDo: [:each :index| | bubbleSegment  |
						bubbleSegment :=  ( 0 @ y * (index - 1) extent: segmentSize).
						each visualisationBubbleCreator: [ self graph graph imageFormForRectangle: bubbleSegment.].].
	self hasSearchTerm ifTrue: [ sortedCommitList :=  self applySearchTermTo: sortedCommitList].
	^ sortedCommitList