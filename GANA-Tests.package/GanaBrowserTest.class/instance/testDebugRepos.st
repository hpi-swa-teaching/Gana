as yet unclassified
testDebugRepos  
 	
	self subject model workingCopy: EdgeCaseMocks new  mockWorkingCopyDiamondMerging.  
 	self subject model  refresh.  
 	MorphicToolBuilder open: self subject model.