as yet unclassified
listItemsForVersion: versions with: historians

	^ versions collect: [:version | (GanaVersionWrapper on: version)
									addAllHistorians: historians; 
									yourself]