as yet unclassified
mockWorkingCopySimpleMerge

	" -- v1 -- v2 -- v4 -- ~master       "
	"            \        /                         "
	"             - v3 -  ~ otherBranch  "
	
	 | version1 version2 version3 version4 workingCopy squitRepository|
	 squitRepository := MockSquitRepository new. 
 	 version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
 	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'.
 	 version3 := MockVersion newWith: '3' From: {version2} at: TimeStamp now id:'33333333'.
 	 version4 := MockVersion newWith: '4' From: {version3 . version2} at: TimeStamp now id:'44444444'. 
 	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version4).
 	 squitRepository addHistorian: (MockHistorian newNamed:'otherBranch' startingAt: version4).
 	 workingCopy := MockWorkingCopy new 
 		  name: 'fake';
  		 repository: squitRepository.
 
 	^workingCopy
 
