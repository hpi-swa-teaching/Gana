as yet unclassified
buildRepositorySelectionButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		action: #actionSelectRepository;
		label: 'Select Repository';
		frame: (0@0 corner: 0.2@0.07).