helping
workingCopyWithMasterAt: aVersion

	| workingCopy squitRepository |
	squitRepository := MockRepository new.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: aVersion).
	workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	^workingCopy
	