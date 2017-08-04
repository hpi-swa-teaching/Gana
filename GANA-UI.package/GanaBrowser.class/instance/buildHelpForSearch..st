building
buildHelpForSearch: builder

	^ builder pluggableActionButtonSpec new
		minimumHeight: 0;
		model: self;
		action: #actionDisplayHelpForSearch;
		label: '?';
		frame: (0.97@0 corner: 1@0.07)