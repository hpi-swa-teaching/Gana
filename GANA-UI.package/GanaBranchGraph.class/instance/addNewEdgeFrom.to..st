algorithm
addNewEdgeFrom: child to: parent

	self childrenDict at: parent ifPresent: [:children | children add: child]
							     ifAbsentPut: [self newChildHeapWith: child].