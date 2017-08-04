as yet unclassified
mockWorkingCopyDiamondMerging

	" -- v1 ---- v3 ----- v5 -- ~ master            "
	"      \         \       /                                 "
	"       - v2 ---- v4 -        ~ otherBranch1 "
	
	| version1 version2 version3 version4 version5 workingCopy mockRepository |
	 mockRepository := MockRepository new. 
	 version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'.
	 version3 := MockVersion newWith: '3' From: {version1} at: TimeStamp now id:'33333333'.
       version4 := MockVersion newWith: '4' From: {version2 . version3} at: TimeStamp now id:'44444444'.
	 version5 := MockVersion newWith: '5' From: {version4 . version3} at: TimeStamp now id:'55555555'.
	 mockRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version5).
	 mockRepository addHistorian: (MockHistorian newNamed:'otherBranch' startingAt: version5).
	 workingCopy := MockWorkingCopy new 
		 name: 'fake';
		 repository: mockRepository.
	 
	^workingCopy