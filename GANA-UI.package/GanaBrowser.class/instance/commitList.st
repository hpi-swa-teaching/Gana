as yet unclassified
commitList 

	| list g x y |
	list := GanaVersionListBuilder new searchFrom: SquotWorkingCopy  registered first repository.
	g := GanaGraphMorph new imageForm.
	x := 200.
	y := 14.
	list withIndexDo: [:each :index| | copyBox clippingBox |
		clippingBox := ( 0 asPoint extent: x@y).
		copyBox :=  ( 0 @ y * (index - 1) extent: x@y).
		each visualisationBubble: ((Form extent: x@y depth: 32) copyBits: copyBox from: g at: 0@0 clippingBox: clippingBox rule: Form over fillColor: nil)].
	^ list