helping
assertCommitListIncludesAll: aVersionCollection

	self assert: (self ganaBrowser commitList includesAllOf: aVersionCollection).