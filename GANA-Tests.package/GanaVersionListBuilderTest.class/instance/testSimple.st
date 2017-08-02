testing
testSimple
	
	| list version1 |
	version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id: '1'. 
	squitRepository addHistorian: (MockHistorian newNamed: 'master' startingAt: version1).
	list := builder searchFrom: squitRepository.
	self assert: (list first = ((squitRepository historianNamed: 'master') version)).