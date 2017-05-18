as yet unclassified
testVerstion: aSquitVersion
	| displayedHashLength toPrint |
	
	displayedHashLength := 6.
	toPrint := {aSquitVersion message.
				aSquitVersion hexHash copyFrom: 1 to: displayedHashLength.
				aSquitVersion metadata at: #author.
				aSquitVersion metadata at: #timestamp}.
	^ toPrint reduce: [:a :b | a , Character tab , b]