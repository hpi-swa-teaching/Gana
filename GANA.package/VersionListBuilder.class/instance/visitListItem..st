as yet unclassified
visitListItem: aListItem

	(seen includes: aListItem version hash) 
		ifTrue: [
			"-> we must come from another historian ... its still a DAG :)"
			(versionList select: [:each|aListItem = each] ) first 
				addAllHistorians: aListItem historians.
				^self].
	seen add: aListItem version hash.
	searchFrontier addAll: (self listItemsForVersion: aListItem version parents with: aListItem historians ).
	versionList add: aListItem. 