as yet unclassified
buildGraphView: builder

	^ "builder pluggableInputFieldSpec" GraphViewSpec new
		model: self;
		frame: (0@0.07 corner: 0.3@1)