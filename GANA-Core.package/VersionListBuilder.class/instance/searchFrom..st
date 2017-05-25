as yet unclassified
searchFrom: aSquitRepository
	
	| allHistorians allVersions |
	allHistorians := aSquitRepository historians, aSquitRepository remoteHistorians.
	allVersions := self searchFrontierFrom: allHistorians.
	searchFrontier addAll: allVersions.
	self performSearch.
	^ versionList 