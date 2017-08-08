testing
testInitializeAlgorithm

	| graph |
	graph := GanaBranchGraph new.
	graph initializeAlgorithm.
	
	self 
		assert: graph positionDict isEmpty;
	      assert: graph childrenDict isEmpty;
	      assert: graph verticalSuccessorDict isEmpty;
	      assert: graph lastCommitPerColumn isEmpty.