search
applyMessageFilter: aSearchTerm on: commits
	
	^ commits select: [:versionWrapper | versionWrapper version message includesSubstring: aSearchTerm caseSensitive: false]					
