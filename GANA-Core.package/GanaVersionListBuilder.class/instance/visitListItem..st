searching
visitListItem: aListItem

	(self alreadySeen: aListItem) 
		ifTrue: [self addDiscoveredHistoriansOf: aListItem]
		ifFalse: [self expand: aListItem]
		