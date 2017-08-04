as yet unclassified
visitListItem: aListItem

	self flag: #refactor. "Ugly conditional"
	(seen includes: aListItem version hash) 
		ifTrue: [
			(versionList select: [:each|aListItem = each] ) first 
				addAllHistorians: aListItem historians.
				^self].
	seen add: aListItem version hash.
	searchFrontier addAll: (self listItemsForVersion: aListItem version parents with: aListItem historians ).
	versionList add: aListItem. 