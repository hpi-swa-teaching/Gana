as yet unclassified
mockWorkingCopyUnmergedBranch

	" - v1 ---- v2 ---- v4 ---- v5 -           ~master            "
	"              \                                                           "
	"               \                                                          "
	"                - v3 -- - v6 --              ~ otherBranch1 "

	 | version1 version2 version3 version4 version5 version6 workingCopy squitRepository|
	 squitRepository := MockSquitRepository new. 
	 version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'.
	 version3 := MockVersion newWith: '3' From: {version2} at: TimeStamp now id:'33333333'.
       version4 := MockVersion newWith: '4' From: {version2} at: TimeStamp now id:'44444444'.
	 version5 := MockVersion newWith: '5' From: {version4} at: TimeStamp now id:'55555555'. 
	 version6 := MockVersion newWith: '6' From: {version3} at: TimeStamp now id:'66666666'.
	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version5).
	 squitRepository addHistorian: (MockHistorian newNamed:'otherBranch' startingAt: version6).
	 workingCopy := MockWorkingCopy new 
		 name: 'fake';
		 repository: squitRepository.
	 
	^workingCopy