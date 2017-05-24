as yet unclassified
allHeadsOfHistoriansOfFirstRepo

	| squitRepo workingCopy allHistorians allVersions |
	self flag: #refactor.
	workingCopy := SquotWorkingCopy registered first.
	squitRepo := workingCopy repository.
	Transcript show:'Showing history of '.
	allHistorians := squitRepo historians, squitRepo remoteHistorians.
	allVersions := Set new.
	allHistorians do: [:historian | | v h |
		v := historian version.
		h := (HistorianAwareSquitVersion new) squitVersion: v; yourself.
		allVersions add: h.
		"instert historian to historian version"
		(allVersions like: h) addHistorian: historian name.
		].
	^ allVersions
	"allHistorians collect: [:historian |GanaSquitVersionWrapper on: historian version with: historian name]"