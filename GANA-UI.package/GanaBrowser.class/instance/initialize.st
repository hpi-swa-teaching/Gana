initialize-release
initialize 
	
	super initialize.
	workingCopy := SquotWorkingCopy registered first ifNil: [self dummyWorkingCopy].