as yet unclassified
testEachCommitHasAPosition
	self subject model workingCopy: EdgeCaseMocks new mockWorkingCopySimple.
	self subject model refresh.
	
	self assert: (self subject model graph commitList size = 
				self subject model graph positionDict size)