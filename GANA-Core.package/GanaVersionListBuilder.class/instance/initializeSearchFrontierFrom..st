initialize-release
initializeSearchFrontierFrom: historians 
	
	| versions |
	self flag: #refactor. "Is there a collection protocol for this?"
	versions := Set new.
	historians  do: [:historian | | v h |
		v := historian version.
		h := (GanaVersionWrapper on: v) isStartOfHistorian: true.
		versions add: h.
		(versions like: h) addHistorian: historian].
	searchFrontier addAll: versions.