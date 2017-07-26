testing
testCorrectMessageAbbreviation

	 | version1 version2 workingCopy squitRepository longMessage |
	 longMessage := ''.
	(1 to: 90 do: [:j| longMessage := longMessage, 'a']).
	 squitRepository := MockRepository new. 
	 version1 := MockVersion newWith: longMessage From: #() at: TimeStamp now id:'11111111'.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id:'22222222'. 
	 workingCopy := self newWorkingCopyWithMasterAt: version2.
	 self setWorkingCopy: workingCopy.
	
	 self uiCommitList do: [:element | self assert: (element contents substrings seventh size < 81)].
	
	