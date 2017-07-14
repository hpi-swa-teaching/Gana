search
filterMessagesOf: aList with: aSearchTerm
	
	^ aList select: [:versionWrapper | versionWrapper version message asLowercase includesSubstring: searchTerm asLowercase] 										