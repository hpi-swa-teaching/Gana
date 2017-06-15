action
actionSelectRepository

	| answer |
	answer := UIManager default chooseFrom: SquotWorkingCopy registered asArray values: SquotWorkingCopy registered asArray title: 'Choose a Repository'.
	answer ifNotNil: [workingCopy := answer repository. self refresh].