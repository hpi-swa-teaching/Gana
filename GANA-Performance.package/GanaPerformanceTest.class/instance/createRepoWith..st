helping
createRepoWith: commitCount

	| squitRepository firstVersion lastVersion |
	squitRepository := MockRepository new.
	firstVersion := MockVersion newWith: '1' From: #() at: TimeStamp now id:'11111111'.
	lastVersion := firstVersion.
	2 to: commitCount do: [:j | lastVersion := MockVersion newWith: j asString From: {lastVersion} at: TimeStamp now id:'11111111',j asString.].
	^ firstVersion