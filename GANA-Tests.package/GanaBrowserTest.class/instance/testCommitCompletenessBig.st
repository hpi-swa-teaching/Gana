as yet unclassified
testCommitCompletenessBig

	 "v1 -- v2 "
	 "            ~'mOCKmASTER2"
	 | workingCopy output squitRepository version versionFirst bigRepo |
	
	 squitRepository := MockSquitRepository new. 
	 version := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	 versionFirst := version.
	 bigRepo := (1 to: 50000 do: [:j | version := MockVersion newWith: '1' From: {version} at: TimeStamp now id:'11111111']).
	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version).
	 workingCopy := MockWorkingCopy new 
		 name: 'fake';
		 repository: squitRepository.
	 self subject model workingCopy: workingCopy.
	 self subject model refresh.
	 output := (Array streamContents: [:stream| 
	       self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).

	self assert: (output size = 50001) not.	
	
	