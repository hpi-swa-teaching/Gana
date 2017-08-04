initialize-release
headOf: historian 

	^ (GanaVersionWrapper on: historian version) 
			isStartOfHistorian: true;
			yourself