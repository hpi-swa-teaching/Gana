search
searchTerm: anObject

	searchTerm := anObject asString.
	self changed: #searchTerm.
	self changed: #commitList.