as yet unclassified
testHeadOfBranch

	| arrayToCheck |
	
	arrayToCheck := (Array streamContents: [:stream| 
	      self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).
	arrayToCheck do: [:element| element  complexContents item isStartOfHistorian ifTrue: [self assert: (element colorToUse = Color orange)]].