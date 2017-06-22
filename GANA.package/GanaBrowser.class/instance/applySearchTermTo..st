as yet unclassified
applySearchTermTo: aList

	(self searchTerm first = $#) ifTrue: [^ aList select: [:versionWrapper | versionWrapper version shortId includesSubstring: self searchTerm allButFirst]].
	(self searchTerm first = $@) ifTrue: [^ aList select: [:versionWrapper | (versionWrapper version metadata at: #author) asLowercase  includesSubstring: self searchTerm allButFirst asLowercase]].
	^ aList select: [:versionWrapper | versionWrapper version message asLowercase includesSubstring: self searchTerm asLowercase]