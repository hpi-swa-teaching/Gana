testing
testSearchIgnoreCaps

	| version2 searchTermCaps searchTermLow version1 ganaBrowser |
	ganaBrowser := self subject model.
	searchTermLow := 'pretty'.
	searchTermCaps := 'PrETTY'.
	version1 := MockVersion newWith: 'Here we are writing beautiful Pretty tests' From: #() at: TimeStamp now id:'ABFE4569'.
	version2 := MockVersion newWith: 'pretty' From: {version1} at: TimeStamp now id:'XYUALIWL'.
	self modelWorkingCopy: (self workingCopyWithMasterAt: version2).
	self assertCommitListIncludesAll: { version1 . version2}.
	ganaBrowser searchTerm: searchTermLow.
	self assertCommitListIncludesAll: { version1 . version2}.
	ganaBrowser searchTerm: searchTermCaps.
	self assertCommitListIncludesAll: { version1 . version2}.