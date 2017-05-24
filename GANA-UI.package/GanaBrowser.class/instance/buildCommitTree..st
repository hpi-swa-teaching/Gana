as yet unclassified
buildCommitTree: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #commitList;
		nodeClass: GanaSquitVersionWrapper;
		columns: { 250 .100. 100 . 100. nil};
		frame: (0@0.1 extent: 1@0.8).