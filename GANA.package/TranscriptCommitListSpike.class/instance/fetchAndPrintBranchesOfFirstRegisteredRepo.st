as yet unclassified
fetchAndPrintBranchesOfFirstRegisteredRepo
	| dummyWorkingCopy gitRepo remoteNames squitRepo|
	dummyWorkingCopy := SquotWorkingCopy registered first.
	squitRepo := dummyWorkingCopy repository.
	gitRepo :=  squitRepo gitRepository.
	
	remoteNames := gitRepo remoteNames.
	"gitRepo fetchFromAll: remoteNames."
	Transcript show: 'Remotes: '.
	gitRepo remoteNames do: [:e|Transcript show: e.].
	Transcript cr; show: 'Branches: '.
	gitRepo branchNames do: [:e|Transcript show: e.].
	Transcript cr; show: 'Historians: '.
	squitRepo historians  do: [:e|Transcript show: e.].
	Transcript cr; show: 'Remote Historians: '.
	squitRepo remoteHistorians, squitRepo historians do: [:e|e  repository versionsCache do: [:r|Transcript show: r; cr]].
	Transcript cr.
