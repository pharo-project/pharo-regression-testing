baselines
baseline1: spec
	<version: '1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Pharo/regression-testing/main'.
		
		spec 
			package: 'Regression-Testing' with: [ 
				spec requires: #( 'OSProcess' 'ImageWorker' )].
		self 
			osProcess: spec;
			imageWorker: spec.
		spec 
			group: 'default' with: #('Regression-Testing'). ].
