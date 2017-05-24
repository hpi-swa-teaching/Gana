as yet unclassified
walkOverVersionHistory
	| dummyWorkingCopy gitRepo squitRepo walker revList all_branches all_branches_squit remoteNames |
	walker := GitHistoryWalker new.
	dummyWorkingCopy := SquotWorkingCopy registered first.
	squitRepo := dummyWorkingCopy repository.
	gitRepo :=  squitRepo gitRepository.
	remoteNames := gitRepo remoteNames.
	gitRepo fetchFromAll: remoteNames.
	all_branches_squit := squitRepo remoteHistorians, squitRepo historians.
	all_branches :=  gitRepo branches. "gitRepo remoteNames"
	revList := walker startingFromAll: all_branches do: [:e|Transcript show:( e revision) ; cr.].
	^ revList