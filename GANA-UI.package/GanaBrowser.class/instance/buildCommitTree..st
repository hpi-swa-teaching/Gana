building
buildCommitTree: builder
	
	^ GanaPluggableTreeSpec new
		model: self;
		roots: #commitList;
		nodeClass: GanaTreeItemWrapper;
		columns: self class defaultColumnWidths;
		frame: (0@0.07 corner: 1@1);
		doubleClick: #actionShowDiffFrom: