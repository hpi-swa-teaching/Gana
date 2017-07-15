search
applySearchTermTo: commits

	|searchTerm|
	searchTerm := self searchTerm.
	(self isHashKeyword: searchTerm) ifTrue: [^ self applyHashFilter: searchTerm on: commits].
	(self isAuthorKeyword: searchTerm) ifTrue: [^ self applyAuthorFilter:serachTerm on: commits].
	^ self filterMessagesOf: commits with: searchTerm 					
