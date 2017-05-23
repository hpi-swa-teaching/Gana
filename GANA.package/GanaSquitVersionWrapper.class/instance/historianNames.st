as yet unclassified
historianNames 
	
	 (self item isKindOf: HistorianAwareSquitVersion )
		ifTrue: [^self item historianNames joinSeparatedBy: ' ~ ']
		 ifFalse: [^ self defaultHistorian]