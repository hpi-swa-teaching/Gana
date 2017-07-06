as yet unclassified
newChildHeapWith: commit

	^ (Heap sortBlock: [ :a :b | (a metadata at: #timestamp) > (b metadata at: #timestamp)])
		add: commit;
		yourself.

	