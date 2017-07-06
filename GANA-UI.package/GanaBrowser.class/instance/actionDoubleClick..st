action
actionDoubleClick: clickedTreeItemWrapper

	| version parentSnapshot selectedSnapshot tool possibleParents |
	version := clickedTreeItemWrapper item version.
	selectedSnapshot := version snapshot.
	possibleParents := version parents.
	(possibleParents size = 0) ifTrue: [ UserDialogBoxMorph inform: 'There are no parents to diff to.'. ^self].
	(possibleParents size = 1) ifFalse: [ |displayedNames parentSnapshots |
		displayedNames := possibleParents collect:[:v| v message].
		parentSnapshots :=  possibleParents collect:[:v| v snapshot].
	parentSnapshot := UIManager default chooseFrom: displayedNames values: parentSnapshots title: 'Choose the parent to diff'.]
	ifTrue: [
	parentSnapshot := possibleParents first snapshot. "be able to select parents"].
	tool := GanaChangedArtifactsViewer from: parentSnapshot to: selectedSnapshot.
	MorphicToolBuilder open: tool.