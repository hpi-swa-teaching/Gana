as yet unclassified
showHistoriansInMorph
	| historyWalker sortedRevisions text |
	historyWalker := SquotHistoryWalker new.
	sortedRevisions := Heap sortBlock: [:a :b | (a metadata at: #timestamp) > (b metadata at: #timestamp)].
	historyWalker startingFromAll: self allLocalHistoriansOfFirstRepo  do: [ :revision | sortedRevisions add: revision].
	text := sortedRevisions inject: '' into: [ :c1 :c2 | c1 , Character cr , (self testVerstion:  c2) ].
	CommitView new openAsMorph: text.