as yet unclassified
testDebugRepos  
 	
	self subject model workingCopy: EdgeCaseMocks new  mockWorkingCopyMultipleBranching.  
 	self subject model  refresh.  
 	MorphicToolBuilder open: self subject model.