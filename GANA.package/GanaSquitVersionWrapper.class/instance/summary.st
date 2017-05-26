as yet unclassified
summary

	| message hash parents author commiter date |
	message := self version message withBlanksTrimmed.
	hash := self version shortId.
	parents := self version parents	collect: [:p | p shortId].
	author := (self version metadata at: #author) 
			, ' <' , (self version metadata at: #authorEmail) , '>'.
	commiter := (self version metadata at: #committer)
				, ' <'
				, (self version metadata at: #committerEmail) , '>'.
	date := self version metadata at: #timestamp.
	^ message , String cr 
		, 'Commit: ' , hash , ', Parents: ' , parents asCommaString , String cr
		, 'Author: ' , author , String cr 
		, 'Committer: ' , commiter , String cr 
		, 'Date: ' , date , String cr