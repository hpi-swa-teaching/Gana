as yet unclassified
testDebugRepos  
 	
	self subject model workingCopy: EdgeCaseMocks new  mockWorkingCopySimpleMerge.  
 	self subject model  refresh.  
 	MorphicToolBuilder open: self subject model.