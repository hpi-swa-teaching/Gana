as yet unclassified
listItemsForVersion: versions with: historians

	^ versions collect: [:version|(GanaSquitVersionWrapper on: version)
									addAllHistorians: historians; 
									yourself]