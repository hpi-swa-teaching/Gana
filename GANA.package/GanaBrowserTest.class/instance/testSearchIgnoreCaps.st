as yet unclassified
testSearchIgnoreCaps

	| version2 workingCopy version3 searchTermCaps searchTermLow |
	squitRepository := MockSquitRepository new.	
	version2 := MockVersion newWith: 'Here we are writing beautiful Pretty tests' From: #() at: TimeStamp now id:'ABFE4569'.
	version3 := MockVersion newWith: 'pretty' From: {version2} at: TimeStamp now id:'XYUALIWL'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version3).
	searchTermLow := 'pretty'.
	searchTermCaps := 'PrETTY'.
	workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	self subject model workingCopy: workingCopy.
	self subject model refresh.
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3).
	self subject model searchTerm: searchTermLow.
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3).
	self subject model searchTerm: searchTermCaps.
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3).