as yet unclassified
initialize 

	super initialize.
	self color: Color transparent.
	font := Preferences standardListFont.
	self initializeSubmorphs.