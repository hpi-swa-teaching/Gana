baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		"spec package: 'Squot' with: [spec repository: 'github://hpi-swa/squot:master/src']."
		spec
			package: 'GANA-Core' "with: [spec requires: #('Squot')]";
			package: 'GANA-Tests'
			package: 'GANA-UI'
			
			group: 'default' with: #('GANA-Core' 'GANA-Tests' 'GANA-UI' );
			group: 'tests' with: #('GANA-Core' 'GANA-Tests' 'GANA-UI' )]
