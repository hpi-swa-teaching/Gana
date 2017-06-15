as yet unclassified
testSearchMessage

	| version1 version2 workingCopy version3 searchTerm |
	squitRepository := MockSquitRepository new.	
	version1 := MockVersion newWith: 'Message To The SWT Teaching Team' From: #() at: TimeStamp now id:'ABCD1234'.
	version2 := MockVersion newWith: 'Here we are writing beautiful pretty tests' From: {version1} at: TimeStamp now id:'ABFE4569'.
	version3 := MockVersion newWith: 'pretty' From: {version2} at: TimeStamp now id:'XYUALIWL'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version3).
	searchTerm := 'pretty'.
		workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	self subject model workingCopy: workingCopy.
	self subject model refresh.
	self assert: (self subject model commitList includes: version1).
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3).
	self subject model searchTerm: searchTerm.
	self assert: (self subject model commitList includes: version1) not.
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3).