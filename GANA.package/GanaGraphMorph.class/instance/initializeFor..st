as yet unclassified
initializeFor: aRepository
	
	self repository: aRepository.
	self color: Color transparent.
	font := Preferences standardListFont.
	self initializeSubmorphs.
	