as yet unclassified
initialize
	
	self
		commitList: (GanaVersionListBuilder new searchFrom: self repository);
		visualProperties: (Array new: (self commitList size));
		graph: (Morph new).