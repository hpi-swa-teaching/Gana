visualisation
asString

	| date commitHash author message version dict |
	dict := self class numbersForFormatting.
	version := self item version.
	date := self formatDate: (version metadata at: #timestamp).
	commitHash :=  version hexHash first: (dict at: #hashLength).
	author := (version metadata at: #author) contractTo: (dict at:#authorLength).
	message := (version message) ifNotEmptyDo: [:versionmessage | versionmessage lines first truncateWithElipsisTo: (dict at: #messageLength).].
	^ String tab, commitHash, String tab, date, String tab, author, String tab, message