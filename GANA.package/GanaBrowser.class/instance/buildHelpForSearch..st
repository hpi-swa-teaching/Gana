as yet unclassified
buildHelpForSearch: builder

	^ builder pluggableActionButtonSpec new
		minimumHeight: 0;
		model: self;
		action: #actionDisplayHelpForSearch;
		label: '?';
		"getText: #searchTerm;
		setText: #searchTerm:;
		indicateUnacceptedChanges: false;
		help: 'Search...';"
		frame: (0.97@0 corner: 1@0.07)