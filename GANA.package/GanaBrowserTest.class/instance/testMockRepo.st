as yet unclassified
testMockRepo

	| version1 version2 workingCopy squitRepository |
	squitRepository := MockSquitRepository new.
	version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'33333333333333333333333333'.
	version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'901243980239849032'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version1).
	workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	self subject model workingCopy: workingCopy.
	self subject model refresh.
	
	
	