as yet unclassified
buildSearchBar: builder

	^ builder pluggableInputFieldSpec new
		minimumHeight: 0;
		model: self;
		getText: #searchTerm;
		setText: #searchTerm:;
		indicateUnacceptedChanges: false;
		help: 'Search...';
		frame: (0.7@0 corner: 0.97@0.07)