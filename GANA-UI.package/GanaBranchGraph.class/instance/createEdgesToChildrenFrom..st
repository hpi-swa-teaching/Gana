algorithm
createEdgesToChildrenFrom: commit

	commit parents do: [ :parent | self createEdgeFrom: commit to: parent].