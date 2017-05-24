as yet unclassified
allHeadsOfHistoriansOfFirstRepo

	| squitRepo workingCopy allHistorians |
	self flag: #refactor.
	workingCopy := SquotWorkingCopy registered first.
	squitRepo := workingCopy repository.
	Transcript show:'Showing history of '.
	allHistorians := squitRepo historians, squitRepo remoteHistorians.
	^ allHistorians collect: [:historian |historian version]