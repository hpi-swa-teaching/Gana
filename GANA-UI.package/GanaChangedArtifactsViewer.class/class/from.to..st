instance creation
from: baseVersion to: loadedVersion
	
	^ self new
		labelString: 'DiffView [#', baseVersion shortId, ' --> #', loadedVersion shortId, '] <3';
		addOriginalArtifacts: (baseVersion snapshot artifacts select: [:each | each isLoadable]);
		addProposedArtifacts: (loadedVersion snapshot artifacts select: [:each | each isLoadable]);
		yourself