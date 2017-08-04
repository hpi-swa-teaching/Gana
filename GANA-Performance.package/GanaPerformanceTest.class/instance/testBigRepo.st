testing
testBigRepo

	| creationTime maxAcceptedSneezers commitCount ganaBrowser bigRepo searchTerm searchTime |
	maxAcceptedSneezers := 30.
	commitCount := 1500.
	ganaBrowser := self subject model.
	bigRepo :=self newWorkingCopyWithMasterAt: (self createRepoWith: commitCount).
	creationTime := [self setWorkingCopy: bigRepo.] timeToRun.
	self assert: ((self sqeakSneezerDuring: creationTime) <= maxAcceptedSneezers).
	searchTerm := '1'.
	searchTime := [ganaBrowser searchTerm: searchTerm. ganaBrowser refresh.] timeToRun.
	self assert: ((self sqeakSneezerDuring: searchTime) <= maxAcceptedSneezers).
	