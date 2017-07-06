testing
testSearchAbbreviatedHashFromStart

	| version1 version2 version3 completeSearchTerm incompleteSearchTerm ganaBrowser |
	ganaBrowser := self subject model.
	incompleteSearchTerm := '#AB'.
	completeSearchTerm := '#ABCD1234'.
	version1 := MockVersion newWith: '1' From: #() at: TimeStamp now id:'ABCD1234'.
	version2 := MockVersion newWith: '#AB a commit Reference in Message' From: {version1} at: TimeStamp now id:'87FE4569'.
	version3 := MockVersion newWith: 'ABblabale' From: {version2} at: TimeStamp now id:'XYABLIWL'.
	self modelWorkingCopy: (self workingCopyWithMasterAt: version3).
	self assertCommitListIncludesAll: { version1 . version2 . version3 }.

	ganaBrowser searchTerm: incompleteSearchTerm.
	self
		assertCommitListIncludesAll: { version1 . version2 };
		assertCommitListIncludesNone: { version3 }.

	ganaBrowser searchTerm: completeSearchTerm.
	self
		assertCommitListIncludesAll: { version1 };
		assertCommitListIncludesNone: { version2 . version3 }.
