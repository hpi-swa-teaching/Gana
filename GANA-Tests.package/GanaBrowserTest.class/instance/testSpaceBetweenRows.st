testing
testSpaceBetweenRows
	
	| foundMorphs exampleListItem |
	foundMorphs := (self subject findByClass: GanaIndentingListItemMorph) morphs.
 	exampleListItem := foundMorphs anyOne.
	self assert: (exampleListItem icon height = exampleListItem minHeight).
	
	