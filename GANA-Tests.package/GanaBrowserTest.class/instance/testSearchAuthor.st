as yet unclassified
testSearchAuthor

	| version1 version2 incompleteSearchTerm workingCopy version3 searchForJuliane squitRepository |
	squitRepository := MockSquitRepository new.	
	version1 := MockVersion newWith: 'I like Juliane' From: #() at: TimeStamp now id:'ABCD1234'.
	version2 := MockVersion newWith: 'We Like Blubls' From: {version1} at: TimeStamp now id:'ABFE4569'.
	version3 := MockVersion newWith: 'ABblabale' From: {version2} at: TimeStamp now id:'XYUALIWL'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version3).
	version1 author: 'Freya'.
	version2 author: 'juliane'.
	version3 author: 'Blubl'.
	searchForJuliane := '@Juliane'.
	incompleteSearchTerm := '@E'.
	workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	self subject model workingCopy: workingCopy.
	self subject model refresh.
	self assert: (self subject model commitList includes: version1).
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3).
	self subject model searchTerm: searchForJuliane.
	self assert: (self subject model commitList includes: version1) not.
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3) not.
	self subject model searchTerm: incompleteSearchTerm.
	self assert: (self subject model commitList includes: version1).
	self assert: (self subject model commitList includes: version2).
	self assert: (self subject model commitList includes: version3) not.