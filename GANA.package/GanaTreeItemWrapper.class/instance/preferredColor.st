as yet unclassified
preferredColor

	self version isStartOfHistorian
		ifTrue: [^ self firstVersionColor ]
		 ifFalse:  [^super highlightColor]
