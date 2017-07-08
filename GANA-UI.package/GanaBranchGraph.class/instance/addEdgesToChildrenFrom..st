algorithm
addEdgesToChildrenFrom: commit

	commit parents do: [ :parent | self addNewEdgeFrom: commit to: parent].