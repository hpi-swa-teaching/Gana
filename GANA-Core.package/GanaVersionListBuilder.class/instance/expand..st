searching
expand: aListItem

	seen add: aListItem version hash.
	searchFrontier addAll: (self listItemsForVersion: aListItem version parents with: aListItem historians ).
	versionList add: aListItem.
		