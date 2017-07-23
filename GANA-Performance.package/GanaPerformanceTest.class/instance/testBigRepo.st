testing
testBigRepo

	| creationTime maxAcceptedSneezers commitCount ganaBrowser bigRepo searchTerm searchTime |
	maxAcceptedSneezers := 30.
	commitCount := 1500.
	ganaBrowser := self subject model.
	bigRepo :=self workingCopyWithMasterAt: (self createRepoWith: commitCount).
	creationTime := Time millisecondsToRun: [ self modelWorkingCopy: bigRepo.].
	self assert: ((self sqeakSneezerDuring: creationTime) <= maxAcceptedSneezers).
	searchTerm := '1'.
	searchTime := Time millisecondsToRun: [ganaBrowser searchTerm: searchTerm. ganaBrowser refresh.].
	self assert: ((self sqeakSneezerDuring: searchTime) <= maxAcceptedSneezers).
	