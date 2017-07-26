testing
testCorrectTimestamp
	| version1 version2 workingCopy squitRepository timeStamp1 timeStamp2 uiCommitList |
	timeStamp1 := DateAndTime
		year: 1997
		month: 2
		day: 24
		hour: 11
		minute: 55.
	timeStamp2 := DateAndTime
		year: 1996
		month: 5
		day: 5
		hour: 4
		minute: 20.
	squitRepository := MockRepository new.
	version1 := MockVersion
		newWith: '1'
		From: #()
		at: timeStamp1
		id: '11111111'.
	version2 := MockVersion
		newWith: '2'
		From: {version1}
		at: timeStamp2
		id: '22222222'.
	workingCopy := self newWorkingCopyWithMasterAt: version2.
	self setWorkingCopy: workingCopy.
	uiCommitList := self uiCommitList.
	self 
		assert: uiCommitList first contents substrings third = '05';
		assert: uiCommitList first contents substrings fourth = 'May';
		assert: uiCommitList first contents substrings fifth = '04:20';
		assert: uiCommitList second contents substrings third = '24';
		assert: uiCommitList second contents substrings fourth = 'Feb'.
	self assert: uiCommitList second contents substrings fifth = '11:55'