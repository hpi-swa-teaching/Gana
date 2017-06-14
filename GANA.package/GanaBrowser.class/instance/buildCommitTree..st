as yet unclassified
buildCommitTree: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #commitList;
		nodeClass: GanaTreeItemWrapper;
		columns: { 0 . 250 . 100 . 100 . 100 . nil};
		frame: (0@0.07 corner: 1@1).