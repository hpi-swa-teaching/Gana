as yet unclassified
initialize 

	seen := Set new.
	versionList := OrderedCollection new.
	searchFrontier := Heap sortBlock: self byTime. 