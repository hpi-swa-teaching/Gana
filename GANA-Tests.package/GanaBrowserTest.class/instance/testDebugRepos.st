as yet unclassified
testDebugRepos  
 	
	self subject model workingCopy: EdgeCaseMocks new  mockWorkingCopyOctopusMerge.  
 	self subject model  refresh.  
 	MorphicToolBuilder open: self subject model.