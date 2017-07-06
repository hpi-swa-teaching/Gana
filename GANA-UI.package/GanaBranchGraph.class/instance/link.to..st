algorithm
link: child to: parent

	self childrenDict at: parent ifPresent: [:children | children add: child]
							     ifAbsentPut: [self newChildHeapWith: child]
								
							
						
	"Alternative zu (childrenDict at: parent) add: commit
	childrenDict at: parent put: (childCollection 
										add: commit; 
										yourself)."