as yet unclassified
textVersionOf: aSquitVersion

	| toPrint |
	toPrint := {aSquitVersion message first: self maxHashLength.
				aSquitVersion hexHash first: self maxMessageLength.
				aSquitVersion metadata at: #author.
				aSquitVersion metadata at: #timestamp}.
	^ toPrint reduce: [:a :b | a , Character space , b]