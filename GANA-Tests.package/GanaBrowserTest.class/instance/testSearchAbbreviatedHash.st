as yet unclassified
testSearchAbbreviatedHash

	| version1 version2 completeSearchTerm incompleteSearchTerm workingCopy version3 |
	squitRepository := MockSquitRepository new.	
	version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'ABCD1234'.
	version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'ABFE4569'.
	version3 := MockVersion newWith: 'ABblabale' From: {version2} at: TimeStamp now id:'XYUALIWL'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version3).
	incompleteSearchTerm := '#AB'.
	completeSearchTerm := '#ABCD1234'.
		workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	self subject model workingCopy: workingCopy.
	self subject model refresh.
	self assert: (self subject model commitList includes: version1).
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3).
	self subject model searchTerm: incompleteSearchTerm.
	self assert: (self subject model commitList includes: version1).
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3) not.
	self subject model searchTerm: completeSearchTerm.
	self assert: (self subject model commitList includes: version1).
	self assert: (self subject model commitList includes: version2) not.
	self assert: (self subject model commitList includes: version3) not.