as yet unclassified
asString

	| date commitHash author message historians version |
	version := self item version.
	"f := self class defaultFromatLengths."
	date := self formatDate: (version metadata at: #timestamp).
	commitHash :=  version hexHash first: 8."(f at: #hash)."
	author := (version metadata at: #author) contractTo: 30."(f at: #author)."
	message := (version message lines first) truncateWithElipsisTo: 80."(f at: #message)."
	historians := '[', self historianString , ']'.
	^ historians , String tab, commitHash, String tab, date, String tab, author, String tab, message