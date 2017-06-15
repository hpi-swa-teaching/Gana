as yet unclassified
testCorrectMessageAbbreviation

	

"	| arrayWithMessages |
	
	arrayWithMessages := (Array streamContents: [:stream | 
	      self subject allMorphsDo: [:morph | (morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).
	arrayWithMessages do: [ :element | self assert: (element complexContents item version message size <= 80)]."
	"Messages should be abbreviated after 80 characters. The following statement shows the sizes of the different messages."
	"arrayWithMessages do: [ :element | | e | self assert: ((e := element complexContents item version message size) <= 80). Transcript show: e; cr.]. "

	