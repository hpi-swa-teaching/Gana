as yet unclassified
allLocalHistoriansOfFirstRepo

	| squitRepo workingCopy all_head_revisions |
	self flag: #refactor.
	workingCopy := SquotWorkingCopy registered first.
	squitRepo := workingCopy repository.
	"Fetch?"
	Transcript show:'Showing history of '.
	all_head_revisions :=  (squitRepo historians, squitRepo remoteHistorians) collect: [:b|Transcript show: b name, ', '. b version].
	Transcript cr.
	^ all_head_revisions