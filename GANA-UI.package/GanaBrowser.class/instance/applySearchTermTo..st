search
applySearchTermTo: aList

	|searchTerm|
	searchTerm := self searchTerm.
	(self isHashKeyword: searchTerm) ifTrue: [^ aList select: [:versionWrapper | (((versionWrapper version shortId) first: (searchTerm size - 1)) = searchTerm allButFirst) or: (versionWrapper version message includesSubstring: searchTerm)]].
	(self isAuthorKeyword: searchTerm) ifTrue: [^ aList select: [:versionWrapper | (versionWrapper version metadata at: #author) asLowercase  includesSubstring: searchTerm allButFirst asLowercase]].
	^ aList select: [:versionWrapper | versionWrapper version message asLowercase includesSubstring: searchTerm asLowercase] 					