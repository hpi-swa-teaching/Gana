testing
testTwoBranches
	
	" -- v1 -- v2 -- v4 -- ~master      "
	"     \              /                         "
	"         -- v3 --  ~ otherBranch   "	
	| list versionGenerator master otherBranch versions |
	versionGenerator := self generatorFor: 5.
	versions := (1 to: 4) collect: [:v | versionGenerator next].
	(versions at: 2) parents: {versions at: 1}.
	(versions at: 3) parents: {versions at: 1}.
	(versions at: 4) parents: {versions at: 2. versions at: 3}.
	master :=  (MockHistorian newNamed: 'master' startingAt: (versions at: 4)).
	otherBranch := (MockHistorian newNamed: 'otherbranch' startingAt: (versions at: 3)).
	squitRepository addHistorian: master; addHistorian: otherBranch.
	list := builder searchFrom: squitRepository.
	self assert: (list first historians includes: (squitRepository historianNamed: 'master')).