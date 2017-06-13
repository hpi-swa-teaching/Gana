as yet unclassified
initialize 

	| dummyCommit |
	super initialize.
	dummyCommit := SquotWorkingCopy registered first repository  historians first version.
	item := GanaVersionWrapper on: dummyCommit.