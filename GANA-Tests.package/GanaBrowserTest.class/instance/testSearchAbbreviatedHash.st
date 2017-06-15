as yet unclassified
testSearchAbbreviatedHash
	"v1 -- v2 "
	"            ~'mOCKmASTER2"
	| version1 version2 completeSearchTerm incompleteSearchTerm workingCopy |
	squitRepository := MockSquitRepository new.	
	version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'ABCD1234'.
	version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'ABFE4569'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version2).
	incompleteSearchTerm := 'AB'.
	completeSearchTerm := 'ABC123'.
		workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	self subject model workingCopy: workingCopy.
	self subject model refresh.
	self subject model searchTerm: incompleteSearchTerm.
	self assert: (self subject model commitList includes: version1).
	self assert: (self subject model commitList includes: version2).
	self subject model searchTerm: completeSearchTerm.
	self assert: (self subject model commitList includes: version1).
	self assert: (self subject model commitList includes: version2) not.
	
	"self assert: (searchTerm kommt in gehighlighteten Commit der Liste vor- mit highlightdTextColor )"