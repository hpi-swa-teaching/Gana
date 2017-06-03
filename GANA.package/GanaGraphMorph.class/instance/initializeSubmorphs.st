as yet unclassified
initializeSubmorphs

	| circleSize |
	circleSize := 30@30.
	1 to: self graphSource size do: [ :row |
		self positionNodeAt: (self graphSourceLeftness at: row)@row - (1@1) With: 'hi'].