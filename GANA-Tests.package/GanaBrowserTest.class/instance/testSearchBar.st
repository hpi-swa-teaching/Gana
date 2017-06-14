as yet unclassified
testSearchBar
	
	| searchBar |
	searchBar := self subject findByClass: PluggableTextMorphPlus.  "self subject findByLabel: 'Search...'."
	self assert: (searchBar morphs notEmpty).
	searchBar sendKeys: 'test'.
	searchBar sendKey: Character enter.
	self assert: (self subject model searchTerm = 'test').
	
	