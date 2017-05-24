as yet unclassified
findAllworkingCopies
	| historians |
	SquotWorkingCopy registered do: [:e|Transcript show: e; cr.]. 
	historians := SquotWorkingCopy registered collect: [:e| e loadedHistorian].
