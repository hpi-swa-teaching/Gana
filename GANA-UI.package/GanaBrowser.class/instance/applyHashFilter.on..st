search
applyHashFilter: aSearchTerm on: commits
	
	^ commits select: [:versionWrapper | (((versionWrapper version shortId) first: (aSearchTerm size - 1)) = aSearchTerm allButFirst) 
											or: (versionWrapper version message includesSubstring: aSearchTerm)]					
