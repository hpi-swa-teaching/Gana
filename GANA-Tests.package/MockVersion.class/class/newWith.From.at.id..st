as yet unclassified
newWith: aMessage From: parents at: timestamp id: hash
	
	^ (self new)
		initialize;
		message: aMessage;
		parents: parents;
		timestamp: timestamp;
		hexHash: hash;
		yourself
	