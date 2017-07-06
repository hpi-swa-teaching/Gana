action
chooseVersionFrom:  possibleParents
 
	| displayedNames |
	displayedNames := possibleParents collect: [:v| '#', v shortId , ' "', v message, '"'].
	^ UIManager default chooseFrom: displayedNames values: possibleParents title: 'Choose the parent to diff'