action
actionSelectRepository

	| answer possibleRepos |
	possibleRepos := SquotWorkingCopy registered asArray.
	answer := UIManager default chooseFrom: possibleRepos values: possibleRepos title: 'Choose a Repository'.
	answer ifNotNil: [workingCopy := answer. self refresh].