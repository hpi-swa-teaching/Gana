as yet unclassified
testAddNewEdgeFromTo

	| graph |
	graph := GanaBranchGraph new.
	graph initializeAlgorithm.
	graph createEdgeFrom: 'child' to: 'parent'.
	self assert: ((graph childrenDict at: 'parent') includes: 'child').