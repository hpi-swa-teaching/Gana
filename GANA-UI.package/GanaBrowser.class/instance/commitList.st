as yet unclassified
commitList 

	| squitRepo workingCopy |
	workingCopy := SquotWorkingCopy registered first.
	squitRepo := workingCopy repository.
	^ (VersionListBuilder new) searchFrom: squitRepo.