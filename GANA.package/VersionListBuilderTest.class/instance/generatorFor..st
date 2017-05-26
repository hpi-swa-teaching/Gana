as yet unclassified
generatorFor: numberOfVersions
	
	^ Generator on: [:g || time |
				time := TimeStamp now.
				1 to: numberOfVersions do: 
				[:id | 
				g yield: (MockVersion newWith: id asString From: #() 
								at: (time plusDays: id) id: id asString)]].