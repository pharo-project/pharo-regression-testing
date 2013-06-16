version
version20: spec
	<version: '2.0' imports: #('1-baseline')>
	
	spec for: #common do: [
		spec blessing: #stable.
		spec description: '2.0 stable'.
		spec author: 'CamilloBruni'.
		spec timestamp: '1/25/2013 11:27' ].
	
	spec for: #common do: [
		spec
			package: 'FileSystem-Legacy' with: 'FileSystem-Legacy-CamilloBruni.1';
		  	package: 'Regression-Testing' with: 'Regression-Testing-DamienCassou.23' ].