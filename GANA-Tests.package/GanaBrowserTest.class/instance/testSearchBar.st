testing
testSearchBar
	
	| searchBar |
	searchBar := self subject findByClass: PluggableTextMorphPlus. 
	self assert: (searchBar morphs notEmpty).
	searchBar sendKeys: 'test'.
	searchBar sendKey: Character enter.
	self assert: (self subject model searchTerm = 'test').
	
	