as yet unclassified
searchFrom: aSquitRepository
	
	| allHistorians |
	allHistorians := aSquitRepository historians, aSquitRepository remoteHistorians.
	self initializeSearchFrontierFrom: allHistorians.
	self performSearch.
	^ versionList 