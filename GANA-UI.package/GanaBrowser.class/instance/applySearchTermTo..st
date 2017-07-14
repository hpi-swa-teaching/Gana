search
applySearchTermTo: aList

	|searchTerm|
	searchTerm := self searchTerm.
	(self isHashKeyword: searchTerm) ifTrue: [^ self filterHashesOf: aList with: searchTerm].
	(self isAuthorKeyword: searchTerm) ifTrue: [^ self filterAuthorsOf: aList with: searchTerm].
	^ self filterMessagesOf: aList with: searchTerm 					