testing
testSearchAuthor

	| version1 version2 incompleteSearchTerm version3 searchForJuliane ganaBrowser |
	ganaBrowser := self subject model.
	searchForJuliane := '@Juliane'.
	incompleteSearchTerm := '@E'.
	version1 := (MockVersion newWith: 'I like Juliane' From: #() at: TimeStamp now id:'ABCD1234') author: 'Freya'; yourself.
	version2 := (MockVersion newWith: 'We Like Blubls' From: {version1} at: TimeStamp now id:'ABFE4569') author: 'juliane'; yourself.
	version3 := (MockVersion newWith: 'ABblabale' From: {version2} at: TimeStamp now id:'XYUALIWL') author: 'Blubl'; yourself.
	self modelWorkingCopy: (self workingCopyWithMasterAt: version3).
	self assertCommitListIncludesAll:  { version1 . version2 . version3 }.
	
	ganaBrowser searchTerm: searchForJuliane.
	self 
		assertCommitListIncludesAll: { version2 };
		assertCommitListIncludesNone: { version1 . version3 }.
	
	ganaBrowser searchTerm: incompleteSearchTerm.
	self 
		assertCommitListIncludesAll: { version1 . version2 };
		assertCommitListIncludesNone: { version3 }.