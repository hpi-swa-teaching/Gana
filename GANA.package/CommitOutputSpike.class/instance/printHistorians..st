as yet unclassified
printHistorians: squitVersions
	| historyWalker sortedRevisions |
	historyWalker := SquotHistoryWalker new.
	sortedRevisions := Heap sortBlock: [:a :b | (a metadata at: #timestamp) > (b metadata at: #timestamp)].
	historyWalker startingFromAll: squitVersions do: [ :revision | sortedRevisions add: revision].
	sortedRevisions do: [ :commit | self printVersion: commit ].