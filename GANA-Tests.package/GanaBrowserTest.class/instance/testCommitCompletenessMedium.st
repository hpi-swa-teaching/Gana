testing
testCommitCompletenessMedium

	 "v1 -- .... - v1000 "
	 "            ~'mockmaster'"
	 | squitRepository version versionFirst bigRepo commitListSize |
	 commitListSize := 1000.
	 squitRepository := MockRepository new. 
	 version := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	 versionFirst := version.
	 bigRepo := (2 to: commitListSize do: [:j | version := MockVersion newWith: '1' From: {version} at: TimeStamp now id:'11111111',j asString ]).
	 self setWorkingCopy: (self newWorkingCopyWithMasterAt: version).
	 self assert: (self uiCommitList size = commitListSize).	
	
	