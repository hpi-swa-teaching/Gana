as yet unclassified
summary
	| t1 t2 t3 t4 t5 t6 |
	t1 := self version message.
	t2 := self version shortId.
	t5 := self version parents
				collect: [:t7 | t7 shortId].
	t3 := (self version metadata at: #author)
				, ' <'
				, (self version metadata at: #authorEmail) , '>'.
	t4 := (self version metadata at: #committer)
				, ' <'
				, (self version metadata at: #committerEmail) , '>'.
	t6 := self version metadata at: #timestamp.
	^ t1 withBlanksTrimmed , String cr , String cr , 'Commit: ' , t2 , ', Parents: ' , t5 asCommaString , String cr , 'Author: ' , t3 , String cr , 'Committer: ' , t4 , String cr , 'Date: ' , t6 , String cr