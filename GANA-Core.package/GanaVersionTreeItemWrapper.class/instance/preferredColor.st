as yet unclassified
preferredColor

	self item isStartOfHistorian
		ifTrue: [^Color orange ]
		 ifFalse:  [^super highlightColor]
