as yet unclassified
testInitializeAlgorithm

	| graph |
	graph := GanaBranchGraph new.
	graph initializeAlgorithm.
	
	self assert: graph positionDict isEmpty.
	self assert: graph childrenDict isEmpty.
	self assert: graph verticalSuccessorDict isEmpty.
	self assert: graph lastCommitPerColumn isEmpty.