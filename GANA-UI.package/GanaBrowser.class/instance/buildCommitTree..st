as yet unclassified
buildCommitTree: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #commitList;
		nodeClass: GanaVersionTreeItemWrapper;
		columns: { 250 .100. 100 . 100. nil};
		frame: (0@0.07 extent: 1@0.9).