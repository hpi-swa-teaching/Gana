search
applyMessageFilter: aSearchTerm on: commits
	
	^ commits select: [:versionWrapper | versionWrapper version message asLowercase includesSubstring: aSearchTerm asLowercase]					
