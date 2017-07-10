as yet unclassified
testIfEachParentHasAChild
	self subject model workingCopy: EdgeCaseMocks new mockWorkingCopySimple.
	self subject model refresh.
	
	(self subject model graph childrenDict keys) do: 
		[:key | self assert: (self subject model graph childrenDict at: key) isNil not].