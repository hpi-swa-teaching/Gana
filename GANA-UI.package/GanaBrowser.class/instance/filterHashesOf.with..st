search
filterHashesOf: aList with: aSearchTerm
	
	^ aList select: [:versionWrapper | (((versionWrapper version shortId) first: (aSearchTerm size - 1)) = aSearchTerm allButFirst) 
									or: (versionWrapper version message includesSubstring: aSearchTerm)]					