as yet unclassified
findAllCurrentProjectRepos
	| dummyWorkingCopy gitRepo remoteNames|
	dummyWorkingCopy := SquotWorkingCopy registered first.
	gitRepo := dummyWorkingCopy repository gitRepository.
	remoteNames := gitRepo remoteNames.
	gitRepo fetchFromAll: remoteNames.
	gitRepo branchNames do: [:e|Transcript show: e.].
	Transcript cr.
