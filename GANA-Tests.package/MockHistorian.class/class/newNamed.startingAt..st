initialize-release
newNamed: aName startingAt: aVersion

	^ (self new)
		name: aName;
		version: aVersion;
		yourself