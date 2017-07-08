search
applySearchTermTo: aList

	(self searchTerm first = $#) ifTrue: [^ aList select: [:versionWrapper | (((versionWrapper version shortId) first: (self searchTerm size - 1)) = self searchTerm allButFirst) or: (versionWrapper version message includesSubstring: self searchTerm)]].
	(self searchTerm first = $@) ifTrue: [^ aList select: [:versionWrapper | (versionWrapper version metadata at: #author) asLowercase  includesSubstring: self searchTerm allButFirst asLowercase]].
	^ aList select: [:versionWrapper | versionWrapper version message asLowercase includesSubstring: self searchTerm asLowercase] 					