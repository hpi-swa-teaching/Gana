visualisation
preferredColor

	self item isStartOfHistorian
		ifTrue: [^ self firstVersionColor ]
		ifFalse:  [^super highlightColor].
