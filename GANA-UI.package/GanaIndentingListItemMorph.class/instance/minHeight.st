layout
minHeight

	"Overwrite row-spacing behaviour in order to prevent spaces between icons"
	| iconHeight |
	iconHeight := self hasIcon
				ifTrue: [self icon height]
				ifFalse: [0].
	^ self fontToUse height max: iconHeight 