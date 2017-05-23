as yet unclassified
preferredColor

	self historianNames = self defaultHistorian 
		ifTrue: [^ super highlightColor ]
		 ifFalse:  [^ Color orange]