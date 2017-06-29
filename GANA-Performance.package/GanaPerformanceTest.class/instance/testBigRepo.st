as yet unclassified
testBigRepo

	| creationTime maxAcceptedTime |
	maxAcceptedTime := 1600.
	creationTime := Time millisecondsToRun: [| bigRepo squitRepository version versionFirst workingCopy2 |
	squitRepository := MockSquitRepository new.
	version := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	 versionFirst := version.
	 bigRepo := (2 to: 1000 do: [:j | version := MockVersion newWith: j asString From: {version} at: TimeStamp now id:'11111111',j asString.] ).
	 squitRepository addHistorian: (MockHistorian newNamed:'MockMaster' startingAt: version).
	versionFirst := GanaVersionListBuilder new searchFrom: squitRepository.
	 workingCopy2 := MockWorkingCopy new 
		 name: 'fake';
		repository: squitRepository;
		yourself.
	self subject model workingCopy: workingCopy2.
	self subject model refresh.].
	self assert: (creationTime < maxAcceptedTime).