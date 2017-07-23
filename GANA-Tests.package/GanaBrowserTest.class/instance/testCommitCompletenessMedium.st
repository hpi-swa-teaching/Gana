testing
testCommitCompletenessMedium

	 "v1 -- v2 "
	 "            ~'mOCKmASTER2"
	 | workingCopy output squitRepository version versionFirst bigRepo |
	
	 squitRepository := MockRepository new. 
	 version := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	 versionFirst := version.
	 bigRepo := (2 to: 1000 do: [:j | version := MockVersion newWith: '1' From: {version} at: TimeStamp now id:'11111111',j asString ]).
	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version).
	 workingCopy := MockWorkingCopy new 
		 name: 'fake';
		 repository: squitRepository.
	 self subject model workingCopy: workingCopy.
	 self subject model refresh.
	 output := (Array streamContents: [:stream| 
	       self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).
	self assert: (output size = 1000).	
	
	