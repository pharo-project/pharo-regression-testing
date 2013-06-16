version
version30: spec
	<version: '30' imports: #('1-baseline')>
	
	spec for: #common do: [
		spec blessing: #development.
		spec description: 'Dev'.
		spec author: 'CamilloBruni'.
		spec timestamp: '2013-06-16' ].
	
	spec for: #common do: [
		spec
			package: 'FileSystem-Legacy' with: 'FileSystem-Legacy-CamilloBruni.1';
		  	package: 'Regression-Testing' with: 'Regression-Testing-CamilloBruni.24' ].