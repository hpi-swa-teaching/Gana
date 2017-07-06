as yet unclassified
testDebugRepos  
 	
	self subject model workingCopy: EdgeCaseMocks new  mockWorkingCopyUnmergedBranch.  
 	self subject model  refresh.  
 	MorphicToolBuilder open: self subject model.