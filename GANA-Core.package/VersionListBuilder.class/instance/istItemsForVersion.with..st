as yet unclassified
istItemsForVersion: versions with: historians

	^ versions collect: [:version|(GanaSquitVersionWrapper on: version) addAllHistorians: historians; yourself] 