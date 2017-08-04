initialize-release
initialize 
	
	super initialize.
	workingCopy := SquotWorkingCopy registered ifNotEmptyDo: #first 
													ifEmpty: [self dummyWorkingCopy].