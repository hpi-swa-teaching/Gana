testing
testCorrectHashAbbreviation

	 "v1 -- v2 "
	 "            ~'mOCKmASTER2"
	 | version1 version2 string workingCopy testHash output squitRepository stringFail testHashFail |
	 string := ''.
	 testHash := (1 to: 8 do: [:j| string := string, 'a']).
	 stringFail := ''.
	 testHashFail := (1 to: 15 do: [:j| stringFail := stringFail, 'a']).
	 squitRepository := MockSquitRepository new. 
	 version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:string.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:stringFail.
	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version2).
	 workingCopy := MockWorkingCopy new 
		 name: 'fake';
		 repository: squitRepository.
	 self subject model workingCopy: workingCopy.
	 self subject model refresh.
	 output := (Array streamContents: [:stream| 
	       self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).

	output do: [:element | self assert: (element contents substrings second size = 8)].
	output do: [:element | self assert: (element contents substrings second = 'aaaaaaaa')].
	
	