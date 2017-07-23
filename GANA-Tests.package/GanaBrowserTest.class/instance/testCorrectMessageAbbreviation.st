testing
testCorrectMessageAbbreviation

	 | version1 version2 string workingCopy testMessage output squitRepository|
	 string := ''.
	 testMessage := (1 to: 90 do: [:j| string := string, 'a']).
	 squitRepository := MockRepository new. 
	 version1 := MockVersion newWith: string From: #() at: TimeStamp now id:'11111111'.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'. 
	 workingCopy := self newWorkingCopyWithMasterAt: version2.
	 self setWorkingCopy: workingCopy.
	 output := (Array streamContents: [:stream| 
	       self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).

	output do: [:element | self assert: (element contents substrings seventh size < 81)].
	
	