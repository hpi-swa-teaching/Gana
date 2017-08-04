helping
generatorFor: numberOfVersions
	
	"Useful for creating a number of timely consecutive commits.
	e.g. | g |
		g := VersionListBuilderTest generatorFor: 5.
		1 to: 5 do: [:e | Transcript show: generator next; cr]."
	^ Generator on: [:g || time |
				time := TimeStamp now.
				1 to: numberOfVersions do: 
				[:id | 
				g yield: (MockVersion newWith: id asString From: #() 
								at: (time plusDays: id) id: id asString)]]