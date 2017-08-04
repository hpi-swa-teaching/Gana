as yet unclassified
testIfEachParentHasAChild

	self ganaBrowser workingCopy: EdgeCaseMocks new mockWorkingCopySimple.
	self ganaBrowser refresh.
	
	(self ganaBrowser graph childrenDict keys) do: 
		[:key | self assert: (self ganaBrowser graph childrenDict at: key) isNil not].