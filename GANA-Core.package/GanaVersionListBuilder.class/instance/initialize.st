initialize-release
initialize 

	seen := Set new.
	versionList := OrderedCollection new.
	searchFrontier := Heap sortBlock: self byTime. 