baselines
baseline1: spec
	<version: '1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Pharo/regression-testing/main'.
		
		spec 
			package: 'Regression-Testing' with: [ 
				spec requires: #( 'OSProcess' 'FileSystem-Legacy' )].
			
		spec package: 'FileSystem-Legacy' with: [
			spec repository: 'http://www.smalltalkhub.com/mc/dh83/fisleg/main/' ].
		
		spec project: 'OSProcess' with: [
			 spec
				className: 'ConfigurationOfOSProcess';
				version: #'stable';
				repository: 'http://www.squeaksource.com/MetacelloRepository'].
		spec 
			group: 'default' with: #('Regression-Testing'). ].
