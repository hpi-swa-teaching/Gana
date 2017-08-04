testing
testCorrectHashAbbreviation

	 "v1 -- v2 "
	 "            ~'mOCKmASTER2"
	 | version1 version2 workingCopy squitRepository displayedHashSIze testLongHash testShortHash |
	 displayedHashSIze := 8.
	 testShortHash := 'aaaaaaaa'.
	 testLongHash := 'aaaaaaaaaaaaaaa'.
	 squitRepository := MockRepository new. 
	 version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id: testShortHash.
	 version2 := MockVersion newWith: '2' From: {version1} at: TimeStamp now id: testLongHash.
	 workingCopy := self newWorkingCopyWithMasterAt: version2.
	 self setWorkingCopy: workingCopy.
	 self uiCommitList do: [:element | self
										assert: (element contents substrings first size = displayedHashSIze);
										assert: (element contents substrings first = 'aaaaaaaa')].
	
	