layout
doubleClick: evt

	| aMorph |
	aMorph := self itemFromPoint: evt position.
	self model perform: self doubleClickSelector with: aMorph complexContents