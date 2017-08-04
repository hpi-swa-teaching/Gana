accessing
dummyWorkingCopy 

	| squitRepository version1 version2 version3 workingCopy |
	squitRepository := MockRepository new.	
	version1 := MockVersion newWith: 'I like Juliane' From: #() at: TimeStamp now id:'ABCD1234'.
	version2 := MockVersion newWith: 'We Like Blubls' From: {version1} at: TimeStamp now id:'ABFE4569'.
	version3 := MockVersion newWith: 'ABblabale' From: {version2} at: TimeStamp now id:'XYUALIWL'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version3).
	workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	^ workingCopy