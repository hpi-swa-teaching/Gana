search
filterAuthorsOf: aList with: aSearchTerm
	
	^ aList select: [:versionWrapper | (versionWrapper version metadata at: #author) asLowercase includesSubstring: aSearchTerm allButFirst asLowercase]					