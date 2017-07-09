as yet unclassified
mockWorkingCopyOctopusMerge

	" - v1 ----- v3 ----- v5 ----- v6- ~ master            "
	"    \          \                  / /                              "
	"     \          - v4 ----------  /      ~ otherBranch1 "
	"      \                          /                                 "
	"        - v2 -----------------/        ~ otherBranch2 "
	
	| version1 version2 version3 version4 version5 version6 workingCopy squitRepository|
  	 squitRepository := MockSquitRepository new. 
  	 version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
  	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'.
  	 version3 := MockVersion newWith: '3' From: {version1} at: TimeStamp now id:'33333333'.
       version4 := MockVersion newWith: '4' From: {version3} at: TimeStamp now id:'44444444'.
  	 version5 := MockVersion newWith: '5' From: {version3} at: TimeStamp now id:'55555555'. 
 	 version6 := MockVersion newWith: '6' From: {version2 . version4 . version5} at: TimeStamp now id:'66666666'.
  	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version6).
 	 squitRepository addHistorian: (MockHistorian newNamed:'otherBranch1' startingAt: version6).
 	 squitRepository addHistorian: (MockHistorian newNamed:'otherBranch2' startingAt: version6).
 	 workingCopy := MockWorkingCopy new 
  		 name: 'fake';
  		 repository: squitRepository.
  
 	^workingCopy