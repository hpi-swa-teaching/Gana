as yet unclassified
mockWorkingCopySimple

	" -- v1 -- v2 -- v3 -- ~master "
	
	| version1 version2 version3 workingCopy mockRepository |
	 mockRepository := MockRepository new. 
	 version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'.
	 version3 := MockVersion newWith: '3' From: {version2} at: TimeStamp now id:'33333333'.
	 mockRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version3).
	 workingCopy := MockWorkingCopy new 
		 name: 'fake';
		 repository: mockRepository.
	
	^workingCopy 
