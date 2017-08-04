accessing
summary

	| message hash parents author commiter date oneHistorian |
	message := self version message withBlanksTrimmed.
	oneHistorian := self historians first name.
	hash := self version shortId.
	parents := self version parents	collect: [:p | p shortId].
	author := (self version metadata at: #author) 
			, ' <' , (self version metadata at: #authorEmail) , '>'.
	commiter := (self version metadata at: #committer)
				, ' <'
				, (self version metadata at: #committerEmail) , '>'.
	date := self version metadata at: #timestamp.
	^ 	'[' ,oneHistorian , ']' , String cr
		, message , String cr 
		, 'Commit: ' , hash , ', Parents: ' , parents asCommaString , String cr
		, 'Author: ' , author , String cr 
		, 'Committer: ' , commiter , String cr 
		, 'Date: ' , date , String cr