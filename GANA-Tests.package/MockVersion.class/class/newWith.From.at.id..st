initialize-release
newWith: aMessage From: parents at: timestamp id: hash
	
	^ (self new)
		message: aMessage;
		parents: parents;
		timestamp: timestamp;
		hexHash: hash;
		yourself
	