action
chooseVersionFrom: possibleParents
 
	| displayedNames |
	displayedNames := possibleParents collect: [:version | '#', version shortId , ' "', version message, '"'].
	^ UIManager default chooseFrom: displayedNames values: possibleParents title: 'Choose the parent you want to diff from'