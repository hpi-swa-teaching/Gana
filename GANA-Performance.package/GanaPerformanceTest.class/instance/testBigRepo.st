as yet unclassified
testBigRepo

	| creationTime maxAcceptedSneezers commitCount ganaBrowser bigRepo |
	maxAcceptedSneezers := 30.
	commitCount := 1500.
	ganaBrowser := self subject model.
	bigRepo :=self workingCopyWithMasterAt: (self createRepoWith: commitCount).
	creationTime := Time millisecondsToRun: [ self modelWorkingCopy: bigRepo.].
	self assert: ((self sqeakSneezerDuring: creationTime) <= maxAcceptedSneezers).