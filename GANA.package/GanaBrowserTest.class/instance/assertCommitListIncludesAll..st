helping
assertCommitListIncludesAll: aVersionCollection

	self assert: (self subject model commitList includesAllOf: aVersionCollection)