as yet unclassified
asString

	| date commitHash author message version |
	self flag: #refactor. "Use a default class side dict for format magic numbers"
	version := self item version.
	date := self formatDate: (version metadata at: #timestamp).
	commitHash :=  version hexHash first: 8.
	author := (version metadata at: #author) contractTo: 30.
	message := (version message) ifNotEmptyDo: [:versionmessage | versionmessage lines first truncateWithElipsisTo: 80.].
	^ String tab, String tab, commitHash, String tab, date, String tab, author, String tab, message