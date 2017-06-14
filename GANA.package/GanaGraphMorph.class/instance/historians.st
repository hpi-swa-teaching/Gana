as yet unclassified
historians

	| allHistorians dict |
	dict := Dictionary new.
	 allHistorians := self repo historians, self repo remoteHistorians.
	allHistorians paddedWith: (1 to: allHistorians size) do: [:hist :id | dict add: (Association key: hist name asSymbol  value: id)].
	^ dict