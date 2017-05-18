as yet unclassified
buildCommitTree: builder
	^ builder pluggableTreeSpec new
		model: self;
		roots: #commitList;
		frame: (0.1@0.1 extent: 0.8@0.8).