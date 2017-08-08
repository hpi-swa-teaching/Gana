searching
performSearch 

	[searchFrontier isEmpty] whileFalse:
		[self visitListItem: searchFrontier removeFirst].