class initialization
newFor: list

	^ (self new)
			commitList: list;
			computeGraph