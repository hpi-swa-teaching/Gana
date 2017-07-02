testing
testHeadOfBranch

	| version1 version2 version3 workingCopy commitMorphs squitRepository |
	squitRepository := MockSquitRepository new.
	version1 := MockVersion newWith: 'Not' From: #() at: TimeStamp now id:'ABCD1234'.
	version2 := MockVersion newWith: 'Not' From: {version1} at: TimeStamp now id:'ABFE4569'.
	version3 := MockVersion newWith: 'I am the Head' From: {version2} at: TimeStamp now id:'XYUALIWL'.
	squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version3).
	workingCopy := MockWorkingCopy new 
		name: 'fake';
		repository: squitRepository.
	self subject model workingCopy: workingCopy.
	self subject model refresh.
	
	commitMorphs := (Array streamContents: [:stream| 
	      self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).
	commitMorphs do: [:element| (element complexContents item version message  = 'I am the Head') ifTrue: [self assert: (element colorToUse = element complexContents firstVersionColor)] ifFalse: [self assert: (element colorToUse = element complexContents firstVersionColor) not]].