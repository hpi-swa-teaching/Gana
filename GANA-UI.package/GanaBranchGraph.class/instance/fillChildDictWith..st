algorithm
fillChildDictWith: commit

	self flag: #refactor.
	commit parents do: [ :parent | self link: commit to: parent].