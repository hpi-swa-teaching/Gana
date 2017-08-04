testing
testBigRepo

	| ganaBrowser bigRepo |
	ganaBrowser := self subject model.
	bigRepo := self newWorkingCopyWithMasterAt: (self createRepoWith: self class commitCount).
	self isFastEnought: [self setWorkingCopy: bigRepo.].
	self isFastEnought: [ganaBrowser searchTerm: '1'. ganaBrowser refresh.].