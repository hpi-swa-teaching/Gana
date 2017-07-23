testing
testCommitCompletenessMedium

	 "v1 -- .... - v1000 "
	 "            ~'mockmaster'"
	 | squitRepository version versionFirst bigRepo uiCommitList |
	 squitRepository := MockRepository new. 
	 version := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	 versionFirst := version.
	 bigRepo := (2 to: 1000 do: [:j | version := MockVersion newWith: '1' From: {version} at: TimeStamp now id:'11111111',j asString ]).
	 self setWorkingCopy: (self newWorkingCopyWithMasterAt: version).
	 uiCommitList := (Array streamContents: [:stream| 
	       self subject allMorphsDo: [:morph|(morph isKindOf: IndentingListItemMorph) ifTrue: [stream nextPut: morph]]]).
	self assert: (uiCommitList size = 1000).	
	
	