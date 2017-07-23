testing
testEmptyCommitMessage

	 | version1 version2 workingCopy output squitRepository |
	 squitRepository := MockRepository new. 
	 version1 := MockVersion newWith: '' From: #() at: TimeStamp now id:'11111111'.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'.
	  workingCopy := self newWorkingCopyWithMasterAt: version2.
	 self setWorkingCopy: workingCopy.
	 output := (Array streamContents: [:stream| 
	       self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).

	self assert: (output size = 2).	