visualisation
asString

	| date commitHash author message version dict |
	self flag: #refactor. "Use a default class side dict for format magic numbers"
	dict := self class numbersForFormatting.
	version := self item version.
	date := self formatDate: (version metadata at: #timestamp).
	commitHash :=  version hexHash first: (dict at: #formatHash).
	author := (version metadata at: #author) contractTo: (dict at:#formatAuthor).
	message := (version message) ifNotEmptyDo: [:versionmessage | versionmessage lines first truncateWithElipsisTo: (dict at: #formatMessage).].
	^ String tab, commitHash, String tab, date, String tab, author, String tab, message