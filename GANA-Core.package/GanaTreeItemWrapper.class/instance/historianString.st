as yet unclassified
historianString
	self flag: #refactor. "Remove ugly branch string in ui"
	^ (self item historians collect: [:historian | historian name]) joinSeparatedBy: '~'