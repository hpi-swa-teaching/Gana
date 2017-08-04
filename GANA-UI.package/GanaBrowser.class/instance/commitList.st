accessing
commitList 

	| x y segmentSize sortedCommitList |
	sortedCommitList := GanaVersionListBuilder new searchFrom: self repository.
	self graph: (GanaBranchGraph newFor: (sortedCommitList collect: [:wrapper | wrapper version])).
	x := self graph viewableWidth.
	y := self graph cellSize.
	segmentSize := x@y.
	sortedCommitList withIndexDo: [:commit :index| | bubbleSegment  |
						bubbleSegment :=  ( 0 @ y * (index - 1) extent: segmentSize).
						commit visualisationBubbleCreator: [self graph imageFormForRectangle: bubbleSegment.].].
	^ self filter: sortedCommitList