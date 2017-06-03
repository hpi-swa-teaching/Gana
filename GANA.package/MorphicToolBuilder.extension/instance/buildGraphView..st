*GANA-extension
buildGraphView: aSpec 
	
	| widget |
	self flag: #todo.
	"widget := self textPaneClass new."
	widget := GraphView new.
	self register: widget id: aSpec name.
	
	widget isAutoFit
		ifTrue: [widget hideHScrollBarIndefinitely]
		ifFalse: [widget showHScrollBarOnlyWhenNeeded].	 
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
	^widget