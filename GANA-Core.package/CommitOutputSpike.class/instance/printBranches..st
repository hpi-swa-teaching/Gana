as yet unclassified
printBranches: gitCommits
	| historyWalker sortedRevisions |
	historyWalker := GitHistoryWalker new.
	sortedRevisions := Heap sortBlock: [:a :b | (a metadata at: #timestamp) > (b metadata at: #timestamp)].
	(historyWalker startingFromAll: gitCommits) do: [ :revision | sortedRevisions add: revision].
	sortedRevisions do: [ :commit | self printVersion: commit ].