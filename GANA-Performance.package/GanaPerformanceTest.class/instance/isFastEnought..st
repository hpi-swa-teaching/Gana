testing
isFastEnought: aBlock

	self assert: ((self sqeakSneezerDuring: aBlock timeToRun) <= self class maxAcceptedSneezers).