helping
commitListIncludesNone: aVersionCollection

	^ (aVersionCollection union: self ganaBrowser commitList) size = (aVersionCollection size + self ganaBrowser commitList size)