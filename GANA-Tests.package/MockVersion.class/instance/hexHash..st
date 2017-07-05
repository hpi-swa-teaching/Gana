accessing
hexHash: aString
	hexHash := aString.
	metadata add: (Association key: #hash value: aString).