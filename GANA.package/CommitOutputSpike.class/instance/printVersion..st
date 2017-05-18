as yet unclassified
printVersion: aSquitVersion
	| displayedHashLength toPrint |
	
	displayedHashLength := 6.
	toPrint := {aSquitVersion message.
				aSquitVersion hexHash copyFrom: 1 to: displayedHashLength.
				aSquitVersion metadata at: #author.
				aSquitVersion metadata at: #timestamp}.
	toPrint do: [ :s |	Transcript show: s; tab].
	Transcript cr.