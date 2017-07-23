testing
testCorrectMessageAbbreviation

	 "v1 -- v2 "
	 "            ~'mOCKmASTER2"
	 | version1 version2 string workingCopy testMessage output squitRepository|
	 string := ''.
	 testMessage := (1 to: 90 do: [:j| string := string, 'a']).
	 squitRepository := MockRepository new. 
	 version1 := MockVersion newWith: string From: #() at: TimeStamp now id:'11111111'.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'.
	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version2).
	 workingCopy := MockWorkingCopy new 
		 name: 'fake';
		 repository: squitRepository.
	 self subject model workingCopy: workingCopy.
	 self subject model refresh.
	 output := (Array streamContents: [:stream| 
	       self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).

	output do: [:element | self assert: (element contents substrings seventh size < 81)].
	
	