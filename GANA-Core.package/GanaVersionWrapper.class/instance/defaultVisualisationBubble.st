as yet unclassified
defaultVisualisationBubble

	| form |
	self flag: #refactor. "Magic numbers and colors"
	form := Form extent: 12 asPoint depth: 32.
	form fillColor: (Color orange).
	^ form