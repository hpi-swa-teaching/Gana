search
addVisualisationTo: aCommitList

	| segmentSize x y |
	x := self graph viewableWidth.
	y := self graph cellSize.
	segmentSize := x@y.
	aCommitList withIndexDo: [:commit :index| | bubbleSegment  |
						bubbleSegment :=  ( 0 @ y * (index - 1) extent: segmentSize).
						commit visualisationBubbleCreator: [self graph imageFormForRectangle: bubbleSegment.].].