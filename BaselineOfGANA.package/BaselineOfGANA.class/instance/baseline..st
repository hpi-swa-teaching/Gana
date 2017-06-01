baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec baseline: 'Squot' with: [spec repository: 'github://hpi-swa/squot:master/src'].
		spec
			package: 'GANA' with: [spec requires: #('Squot')];
			
			group: 'default' with: #('GANA' );
			group: 'tests' with: #('GANA' )]
