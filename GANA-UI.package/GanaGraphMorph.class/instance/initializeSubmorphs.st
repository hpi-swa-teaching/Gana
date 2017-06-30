as yet unclassified
initializeSubmorphs

	| circleSize vertices commitList                         pq heapSortBlock childDict infoDict lastCommitPerColumn |
	self flag: #refactor. "Create a class for this?"
	
	heapSortBlock := [ :a :b | (a metadata at: #timestamp) > (b metadata at: #timestamp) ]. "Potentially dangerous when using multiple time zones"
	pq := Heap sortBlock: heapSortBlock.
	childDict := Dictionary new.
	infoDict := Dictionary new.
	lastCommitPerColumn := OrderedCollection new.
	circleSize := self nodeSize asPoint.
	vertices := OrderedCollection new.
	commitList := self graphSource.
	pq add: (commitList first version).
	1 to: commitList size do: [ :rowIndex || commit |
		commit := (commitList at: rowIndex) version.
		1 to: (commit parents size) do: [ :count | | parent | "What if it has no parent?"
			parent := (commit parents at: count).
			childDict at: parent ifPresent: [:childCollection | childDict at: parent put: (childCollection add: commit; yourself)] ifAbsentPut: [pq add: parent.
																													(Heap sortBlock: heapSortBlock)
																														add: commit;
																														yourself.]
		].
		childDict at: commit ifPresent: [:pqchildren | | child childInfo |
							child := pqchildren first.
							childInfo := infoDict at: child. "Consists of painted Column and potential Successor"
							(childInfo size < 2) ifTrue: [self positionNodeAt: rowIndex withColumn: (childInfo first). "We can be sure this exists because if we have children then they already have had to be painted and thus added to this dict"
													lastCommitPerColumn at: (childInfo first) put: commit.
													infoDict at: child put: (Array with: (childInfo first) with: commit).
													infoDict at: commit put: (Array with: (childInfo first))
													]
											ifFalse: [lastCommitPerColumn add: commit.
														self positionNodeAt: rowIndex withColumn: (lastCommitPerColumn size).
														infoDict at: commit put: (Array with: (lastCommitPerColumn size))
														]. 
							]
							ifAbsent: [self positionNodeAt: rowIndex withColumn: (lastCommitPerColumn size). "This should only be called for children-less commits, eg branch pointer"
									lastCommitPerColumn add: commit.
									infoDict at: commit put: (Array with: (lastCommitPerColumn size))
									].
		"vertices add: p"
	].
	"vertices := (vertices * circleSize) + (self nodeSize / 2) asPoint."
	"self addMorphBack: (self defaultLine setVertices: vertices asArray; yourself)."