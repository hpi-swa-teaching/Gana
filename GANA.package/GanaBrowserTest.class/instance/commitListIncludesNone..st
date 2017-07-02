helping
commitListIncludesNone: aVersionCollection

	aVersionCollection do: [:elem | (self subject model commitList includes: elem) not ifFalse: [^ false]].
	^ true