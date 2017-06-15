as yet unclassified
setUpMock

	| version1 version2 |
	squitRepository := MockSquitRepository new.	
	version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'1'.
	version2 := MockVersion newWith: '2' From: #(version1) at: TimeStamp now id:'2'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version1).
	
	