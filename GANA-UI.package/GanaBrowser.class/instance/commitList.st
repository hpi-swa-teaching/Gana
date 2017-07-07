as yet unclassified
commitList 

	| list graph x y segmentSize |
	self flag: #refactor. "How do we save the list heights etc.?"
	list := GanaVersionListBuilder new searchFrom: (self repository).
	graph := GanaBranchGraph newFor: list.
	x := 400.
	y := graph cellSize.
	segmentSize := x@y.
	list withIndexDo: [:each :index| | bubbleSegment  |
						bubbleSegment :=  ( 0 @ y * (index - 1) extent: segmentSize).
						each visualisationBubbleCreator: [ graph graph imageFormForRectangle: bubbleSegment.].].
	self hasSearchTerm ifTrue: [ list :=  self applySearchTermTo: list].
	^ list