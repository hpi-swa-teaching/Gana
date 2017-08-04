initialize-release
initializeSearchFrontierFrom: historians 
	
	| uniqueHeads |
	uniqueHeads := Set new.
	historians do: [:historian | | head |
								head := self headOf: historian.
								uniqueHeads add: head. 
								(uniqueHeads like: head) addHistorian: historian].
	searchFrontier addAll: uniqueHeads.