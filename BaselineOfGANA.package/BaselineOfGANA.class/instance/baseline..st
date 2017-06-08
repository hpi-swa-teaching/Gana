baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec baseline: 'Squot' with: [spec loads: #('default');
							 repository: 'github://hpi-swa/squot:master/src'].
		spec baseline: 'MorphicTesting' with: [spec loads: #('default');
						            repository: 'github://HPI-SWA-Teaching/Morphic-Testing-Framework:master/packages'].

		spec
			package: 'GANA-Core' with: [spec requires: #('Squot')];
			package: 'GANA-UI' with: [spec requires: #('GANA-Core')];
			package: 'GANA-Tests' with: [spec requires: #('default', 'MorphicTesting')];
			
			group: 'default' with: #('GANA-Core' 'GANA-UI');
			group: 'tests' with: #('GANA-Tests')]
