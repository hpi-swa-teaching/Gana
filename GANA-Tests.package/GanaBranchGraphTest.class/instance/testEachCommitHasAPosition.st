as yet unclassified
testEachCommitHasAPosition

	self ganaBrowser workingCopy: EdgeCaseMocks new mockWorkingCopySimple.
	self ganaBrowser refresh.
	
	self assert: (self ganaBrowser graph commitList size = 
				self ganaBrowser graph positionDict size)