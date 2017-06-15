as yet unclassified
applySearchTermTo: aList

	(self searchTerm first = $#) ifTrue: [^ aList select: [:versionWrapper | versionWrapper version shortId includesSubstring: self searchTerm allButFirst]].
	^ aList select: [:versionWrapper | versionWrapper version message asLowercase includesSubstring: self searchTerm asLowercase]