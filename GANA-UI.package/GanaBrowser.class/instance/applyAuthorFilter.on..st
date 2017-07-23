search
applyAuthorFilter: aSearchTerm on: commits
	
	^ commits select: [:versionWrapper | (versionWrapper version metadata at: #author) asLowercase includesSubstring: aSearchTerm allButFirst asLowercase]					
