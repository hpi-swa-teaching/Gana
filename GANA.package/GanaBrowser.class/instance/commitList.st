as yet unclassified
commitList 
	
	| historyWalker sortedRevisions |
	historyWalker := SquotHistoryWalker new.
	sortedRevisions := Heap sortBlock: [:a :b | (a metadata at: #timestamp) > (b metadata at: #timestamp)].
	historyWalker startingFromAll: self allHeadsOfHistoriansOfFirstRepo  do: [ :revision | sortedRevisions add: revision].
	^ sortedRevisions