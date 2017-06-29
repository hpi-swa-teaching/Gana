as yet unclassified
testCorrectTimestamp

	 "v1 -- v2 "
	 "            ~'mOCKmASTER2"
	 | version1 version2 workingCopy output squitRepository timeStamp1 timeStamp2 |
	 timeStamp1 := DateAndTime year: 1997 month: 2 day: 24 hour: 11 minute: 55.
	 timeStamp2 := DateAndTime year: 1996 month: 5 day: 5 hour: 4 minute: 20.
	 squitRepository := MockSquitRepository new. 
	 version1 := MockVersion newWith: '1' From: #() at: timeStamp1 id:'11111111'.
	 version2 := MockVersion newWith: '2' From: {version1} at: timeStamp2 id:'22222222'.
	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version2).
	 workingCopy := MockWorkingCopy new 
		 name: 'fake';
		 repository: squitRepository.
	 self subject model workingCopy: workingCopy.
	 self subject model refresh.
	 output := (Array streamContents: [:stream| 
	       self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).

	self assert: (output first contents substrings third = '05').
	self assert: (output first contents substrings fourth = 'May').
	self assert: (output first contents substrings fifth = '04:20').

	self assert: (output second contents substrings third = '24').
	self assert: (output second contents substrings fourth = 'Feb').	
	self assert: (output second contents substrings fifth = '11:55').	
	
	