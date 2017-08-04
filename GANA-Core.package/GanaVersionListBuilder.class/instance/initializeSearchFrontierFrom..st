initialize-release
initializeSearchFrontierFrom: historians 
	
	| versions |
	self flag: #refactor. "Is there a collection protocol for this?"
	versions := Set new.
	historians do: [:historian | | h |
		h := (GanaVersionWrapper on: historian version) isStartOfHistorian: true.
		versions add: h.
		(versions like: h) addHistorian: historian].
	searchFrontier addAll: versions.