formatting
numbersForFormatting
	
	^ Dictionary new
		at: #hashLength put: 8;
		at: #authorLength put: 30;
		at: #messageLength put: 80;
		yourself
	