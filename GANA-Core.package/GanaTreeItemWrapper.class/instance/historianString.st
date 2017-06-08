as yet unclassified
historianString

	^ (self version historians collect: [:historian | historian name]) joinSeparatedBy: '~'