as yet unclassified
highlightColor

	self historianNames = self defaultHistorian 
		ifTrue: [^ Color orange]
		 ifFalse:  [^ super highlightColor ]