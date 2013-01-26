baselines
baseline1: spec
	<version: '1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Pharo/regression-testing/main'.
		
		spec 
			package: 'Regression-Testing' with: [ 
				spec requires: #( OSProcess )].
			
		spec project: 'OSProcess' with: [
			 spec
				className: 'ConfigurationOfOSProcess';
				version: #'stable';
				repository: 'http://www.squeaksource.com/MetacelloRepository'].
		spec 
			group: 'default' with: #('Regression-Testing'). ].
