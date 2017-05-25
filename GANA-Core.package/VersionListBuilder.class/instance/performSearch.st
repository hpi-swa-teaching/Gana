as yet unclassified
performSearch 

	[searchFrontier isEmpty] whileFalse:
		[self visitListItem: searchFrontier removeFirst].