as yet unclassified
initializeSubmorphs

	| commitList                         "pq" heapSortBlock childDict infoDict positionDict lastCommitPerColumn |

	
	heapSortBlock := [ :a :b | (a metadata at: #timestamp) > (b metadata at: #timestamp) ]. "Potentially dangerous when using multiple time zones"

	1 to: commitList size do: [ :rowIndex || commit |
		1 to: (commit parents size) do: [ :count | | parent | "What if it has no parent?"
			parent := (commit parents at: count).
			childDict at: parent ifPresent: [:childCollection | childDict at: parent put: (childCollection add: commit; yourself)] ifAbsentPut: [
																													(Heap sortBlock: heapSortBlock)
																														add: commit;
																														yourself.]
		].
		childDict at: commit ifPresent: [:pqchildren | | child childInfo |
							child := pqchildren first.
							childInfo := infoDict at: child. "Consists of painted Column and potential Successor"
							(childInfo size < 2) ifTrue: [positionDict at: commit put: (self positionNodeAt: rowIndex withColumn: (childInfo first)). "We can be sure this exists because if we have children then they already have had to be painted and thus added to this dict"
													lastCommitPerColumn at: (childInfo first) put: commit.
													infoDict at: child put: (Array with: (childInfo first) with: commit).
													infoDict at: commit put: (Array with: (childInfo first))
													
													]
											ifFalse: [lastCommitPerColumn add: commit.
														positionDict at: commit put: (self positionNodeAt: rowIndex withColumn: (lastCommitPerColumn size)).
														infoDict at: commit put: (Array with: (lastCommitPerColumn size)).
														].
								1 to: (pqchildren size) do: [ :count |
														self positionLineBetween: (positionDict at: (pqchildren removeFirst)) And: (positionDict at: commit).
								].
							]
							ifAbsent: [ "This should only be called for children-less commits, eg branch pointer"
									lastCommitPerColumn add: commit.
									positionDict at: commit put: (self positionNodeAt: rowIndex withColumn: (lastCommitPerColumn size)).
									infoDict at: commit put: (Array with: (lastCommitPerColumn size))
									].
	].