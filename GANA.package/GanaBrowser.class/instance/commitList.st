as yet unclassified
commitList 

	| list g x y segmentSize |
	self flag: #refactor. "How do we save the list heights etc.?"
	list := GanaVersionListBuilder new searchFrom: self repository.
	g := GanaGraphMorph newFor: self repository.
	x := 200.
	y := 14.
	segmentSize := x@y.
	list withIndexDo: [:each :index| | bubbleSegment  |
						bubbleSegment :=  ( 0 @ y * (index - 1) extent: segmentSize).
						each visualisationBubbleCreator: [ g imageFormForRectangle: bubbleSegment.].].
	self hasSearchTerm ifTrue: [ list :=  self applySearchTermTo: list].
	^ list