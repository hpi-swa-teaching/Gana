search
applyAuthorFilter: aSearchTerm on: commits
						
	^ commits select: [:versionWrapper | (versionWrapper version metadata at: #author)
											includesSubstring: aSearchTerm allButFirst caseSensitive: false]