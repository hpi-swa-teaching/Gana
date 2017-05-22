as yet unclassified
printVersion: aSquitVersion
	Transcript show: (aSquitVersion message).
	Transcript show: '	'.
	Transcript show: (aSquitVersion hexHash).
	Transcript show: '	'.
	Transcript show: (aSquitVersion metadata at: #author).
	Transcript show: '	'.	
	Transcript show: (aSquitVersion metadata at: #timestamp).
	Transcript cr.