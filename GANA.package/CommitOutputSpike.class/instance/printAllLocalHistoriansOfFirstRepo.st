as yet unclassified
printAllLocalHistoriansOfFirstRepo

	| squitRepo workingCopy all_head_revisions |
	workingCopy := SquotWorkingCopy registered first.
	squitRepo := workingCopy repository.
	"Fetch?"
	all_head_revisions :=  squitRepo historians collect: [:b|b version].
	self printHistorians: all_head_revisions.