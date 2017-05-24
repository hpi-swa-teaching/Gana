as yet unclassified
textVersionOf: aSquitVersion

	| toPrint |
	toPrint := {aSquitVersion message first: (self maxMessageLength min: aSquitVersion message size).
				aSquitVersion hexHash first: self maxHashLength.
				aSquitVersion metadata at: #author.
				aSquitVersion metadata at: #timestamp}.
	^ toPrint reduce: [:a :b | a , Character space , b]