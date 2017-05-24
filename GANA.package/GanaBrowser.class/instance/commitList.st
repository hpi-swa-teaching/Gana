as yet unclassified
commitList 
	
	| historyWalker sortedRevisions |
	historyWalker := SquotHistoryWalker new.
	sortedRevisions := Heap sortBlock: [:a :b | (a metadata at: #timestamp) > (b metadata at: #timestamp)].
	1 halt.
	historyWalker startingFromAll: self allHeadsOfHistoriansOfFirstRepo  do: [ :version | sortedRevisions add: version].
	^ sortedRevisions