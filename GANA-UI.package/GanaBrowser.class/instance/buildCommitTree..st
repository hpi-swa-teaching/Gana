building
buildCommitTree: builder
	
	^ GanaPluggableTreeSpec new
		model: self;
		roots: #commitList;
		nodeClass: GanaTreeItemWrapper;
		columns: { 0 . 100 . 100 . 100 . nil};
		frame: (0@0.07 corner: 1@1);
		doubleClick: #actionShowDiffFrom:.