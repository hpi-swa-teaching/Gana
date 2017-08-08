sorting
byTime

	^ [:a :b | (a version metadata at: #timestamp) > (b version metadata at: #timestamp)] 