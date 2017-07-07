action
actionShowDiffFrom: clickedTreeItemWrapper

	| selectedVersion tool possibleParents otherVersion |
	selectedVersion := clickedTreeItemWrapper item version.
	possibleParents := selectedVersion parents.
	
	(possibleParents size = 0) 
		ifTrue: [UserDialogBoxMorph inform: 'There are no parents to diff to.'. ^ self].
	(possibleParents size = 1) 
		ifTrue: [otherVersion := possibleParents first.]
		ifFalse: [otherVersion := self chooseVersionFrom: possibleParents. 
				otherVersion ifNil: [^ self]].
		
	tool := GanaChangedArtifactsViewer from: otherVersion to: selectedVersion.
	MorphicToolBuilder open: tool.