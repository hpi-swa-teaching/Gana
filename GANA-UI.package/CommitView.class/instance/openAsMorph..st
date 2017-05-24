as yet unclassified
openAsMorph: commits
	|win|
  	win := SystemWindow labelled: 'Commit History'.
  	win addMorph: (PluggableTextMorph new setText: commits) frame: (0.0@0.05 extent: (1@0.8)).
  	win openInWorld.